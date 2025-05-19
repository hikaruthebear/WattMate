<script lang="ts">
	import { onMount } from 'svelte';
	import axios from 'axios';
	import Chart from 'chart.js/auto';

	const apiUrl = 'http://localhost:8080';
	let chartCanvas: HTMLCanvasElement;
	let chart: Chart;

	interface BillData {
		Date: string;
		TotalKwhUsed: number;
		TotalAmount: number;
		AverageRate: number;
	}

	// Dummy data for testing
	const dummyBillData: BillData[] = [
		{ Date: '2025-01-01', TotalKwhUsed: 120, TotalAmount: 1800, AverageRate: 15 },
		{ Date: '2025-02-01', TotalKwhUsed: 130, TotalAmount: 1950, AverageRate: 15 },
		{ Date: '2025-03-01', TotalKwhUsed: 110, TotalAmount: 1650, AverageRate: 15 },
		{ Date: '2025-04-01', TotalKwhUsed: 140, TotalAmount: 2100, AverageRate: 15 },
		{ Date: '2025-05-01', TotalKwhUsed: 150, TotalAmount: 2250, AverageRate: 15 },
		{ Date: '2025-06-01', TotalKwhUsed: 125, TotalAmount: 1875, AverageRate: 15 },
		{ Date: '2025-07-01', TotalKwhUsed: 135, TotalAmount: 2025, AverageRate: 15 },
	];

	let billData: BillData[] = [];

	onMount(async () => {
		try {
			const response = await axios.get(apiUrl + '/?action=fetch_bill_summary');
			if (response.data && !response.data.error) {
				billData = response.data.billSummary;
				if (!billData || billData.length === 0) billData = dummyBillData;
				initializeChart();
			} else {
				billData = dummyBillData;
				initializeChart();
			}
		} catch (error) {
			console.error('Error fetching bill data:', error);
			billData = dummyBillData;
			initializeChart();
		}
	});

	function initializeChart() {
		if (!chartCanvas) return;

		const ctx = chartCanvas.getContext('2d');
		if (!ctx) return;

		// Destroy existing chart if it exists
		if (chart) {
			chart.destroy();
		}

		// Prepare data
		const labels = billData.map(bill => new Date(bill.Date).toLocaleDateString());
		const consumptionData = billData.map(bill => bill.TotalKwhUsed);
		const amountData = billData.map(bill => bill.TotalAmount);

		// Create chart ughh
		chart = new Chart(ctx, {
			type: 'line',
			data: {
				labels,
				datasets: [
					{
						label: 'Electricity Consumption (kWh)',
						data: consumptionData,
						borderColor: '#FFCA00',
						backgroundColor: 'rgba(255, 202, 0, 0.1)',
						yAxisID: 'y',
						fill: true
					},
					{
						label: 'Bill Amount (₱)',
						data: amountData,
						borderColor: '#3B82F6',
						backgroundColor: 'rgba(59, 130, 246, 0.1)',
						yAxisID: 'y1',
						fill: true
					}
				]
			},
			options: {
				responsive: true,
				interaction: {
					mode: 'index',
					intersect: false
				},
				scales: {
					y: {
						type: 'linear',
						display: true,
						position: 'left',
						title: {
							display: true,
							text: 'kWh'
						}
					},
					y1: {
						type: 'linear',
						display: true,
						position: 'right',
						title: {
							display: true,
							text: 'Amount (₱)'
						},
						grid: {
							drawOnChartArea: false
						}
					}
				},
				plugins: {
					title: {
						display: true,
						text: 'Electricity Consumption and Billing History'
					},
					tooltip: {
						callbacks: {
							label: function(context) {
								let label = context.dataset.label || '';
								if (label) {
									label += ': ';
								}
								if (context.datasetIndex === 1) {
									label += '₱' + context.parsed.y.toFixed(2);
								} else {
									label += context.parsed.y + ' kWh';
								}
								return label;
							}
						}
					}
				}
			}
		});
	}
</script>

<div class="w-full h-[600px] bg-white rounded-lg p-4 shadow-lg">
	<canvas bind:this={chartCanvas}></canvas>
</div> 