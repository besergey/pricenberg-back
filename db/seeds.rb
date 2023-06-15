# frozen_string_literal: true

processors = [
  {
    name: 'Ryzen 5 3600	Matisse',
    core_count:	6,
    threads: 12,
    min_freq:	3.6,
    max_freq: 4.2,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'32MB',
      release_date: 'Jul 7th, 2019'
    }
  },
  {
    name: 'Ryzen 5 5600G	Cezanne',
    core_count:	6,
    threads: 12,
    min_freq:	3.9,
    max_freq: 4.4,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'16MB',
      release_date: 'Apr 13th, 2021'
    }
  },
  {
    name: 'Ryzen 5 5600X	Vermeer',
    core_count:	6,
    threads: 12,
    min_freq:	3.7,
    max_freq: 4.6,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'32MB',
      release_date: 'Nov 5th, 2020'
    }
  },
  {
    name: 'Core i9-13900K	Raptor Lake-S	',
    core_count: 24,
    threads: 32,
    min_freq:	3,
    max_freq: 5.8,
    tdp:	125,
    properties: {
      socket: 'Socket 1700',
      size: '10 nm',
      l3_cache:	'36MB',
      release_date: 'Sep 27th, 2022'
    }
  },
  {
    name: 'Ryzen 5 5600	Vermeer',
    core_count:	6,
    threads: 12,
    min_freq:	3.5,
    max_freq: 4.4,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'32MB',
      release_date: 'Apr 20th, 2022'
    }
  },
  {
    name: 'Ryzen 5 2600	Zen',
    core_count:	6,
    threads: 12,
    min_freq:	3.4,
    max_freq: 3.9,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '12 nm',
      l3_cache:	'16MB',
      release_date: 'Apr 19th, 2018'
    }
  },
  {
    name: 'Ryzen 7 5700X	Vermeer',
    core_count:	8,
    threads: 16,
    min_freq:	3.4,
    max_freq: 4.6,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'32MB',
      release_date: 'Apr 4th, 2022'
    }
  },
  {
    name: 'Ryzen 5 5500	Cezanne',
    core_count:	6,
    threads: 12,
    min_freq:	3.6,
    max_freq: 4.2,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'16MB',
      release_date: 'Apr 4th, 2022'
    }
  },
  {
    name: 'Ryzen 3 3200G	Picasso',
    core_count: 4,
    threads: 4,
    min_freq:	3.6,
    max_freq: 4,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '12 nm',
      l3_cache:	'4MB',
      release_date: 'Jul 7th, 2019'
    }
  },
  {
    name: 'Ryzen 7 7800X3D	Raphael',
    core_count:	8,
    threads: 16,
    min_freq:	4.2,
    max_freq: 5,
    tdp:	120,
    properties: {
      socket: 'Socket AM5',
      size: '5 nm',
      l3_cache:	'96MB',
      release_date: 'Jan 4th, 2023'
    }
  },
  {
    name: 'Ryzen 7 5800X	Vermeer',
    core_count:	8,
    threads: 16,
    min_freq:	3.8,
    max_freq: 4.7,
    tdp:	105,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'32MB',
      release_date: 'Nov 5th, 2020'
    }
  },
  {
    name: 'Ryzen 7 3700X	Matisse',
    core_count:	8,
    threads: 16,
    min_freq:	3.6,
    max_freq: 4.4,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'32MB',
      release_date: 'Jul 7th, 2019'
    }
  },
  {
    name: 'Ryzen 7 7840U	Phoenix',
    core_count:	8,
    threads: 16,
    min_freq:	3.3,
    max_freq: 5.1,
    tdp:	28,
    properties: {
      socket: 'Socket FP8',
      size: '4 nm',
      l3_cache:	'16MB',
      release_date: 'May 2023'
    }
  },
  {
    name: 'Ryzen 7 5800X3D	Vermeer',
    core_count:	8,
    threads: 16,
    min_freq:	3.4,
    max_freq: 4.5,
    tdp:	105,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'96MB',
      release_date: 'Apr 20th, 2022'
    }
  },
  {
    name: 'Ryzen 9 7950X	Raphael	',
    core_count: 16,
    threads: 32,
    min_freq:	4.5,
    max_freq: 5.7,
    tdp:	170,
    properties: {
      socket: 'Socket AM5',
      size: '5 nm',
      l3_cache:	'64MB',
      release_date: 'Sep 27th, 2022'
    }
  },
  {
    name: 'Ryzen 7 2700X	Zen',
    core_count:	8,
    threads: 16,
    min_freq:	3.7,
    max_freq: 4.35,
    tdp:	105,
    properties: {
      socket: 'Socket AM4',
      size: '12 nm',
      l3_cache:	'16MB',
      release_date: 'Apr 19th, 2018'
    }
  },
  {
    name: 'Core i5-13600K	Raptor Lake-S	',
    core_count: 14,
    threads: 20,
    min_freq:	3.5,
    max_freq: 5.1,
    tdp:	125,
    properties: {
      socket: 'Socket 1700',
      size: '10 nm',
      l3_cache:	'24MB',
      release_date: 'Sep 27th, 2022'
    }
  },
  {
    name: 'Ryzen 5 1600	Zen',
    core_count:	6,
    threads: 12,
    min_freq:	3.2,
    max_freq: 3.6,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '14 nm',
      l3_cache:	'16MB',
      release_date: 'Apr 11th, 2017'
    }
  },
  {
    name: 'Ryzen 5 4600G	Renoir',
    core_count:	6,
    threads: 12,
    min_freq:	3.7,
    max_freq: 4.2,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'8MB',
      release_date: 'Jul 21st, 2020'
    }
  },
  {
    name: 'Ryzen 7 5700G	Cezanne',
    core_count:	8,
    threads: 16,
    min_freq:	3.8,
    max_freq: 4.6,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'16MB',
      release_date: 'Apr 13th, 2021'
    }
  },
  {
    name: 'Ryzen 9 5900X	Vermeer	',
    core_count: 12,
    threads: 24,
    min_freq:	3.7,
    max_freq: 4.8,
    tdp:	105,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'64MB',
      release_date: 'Nov 5th, 2020'
    }
  },
  {
    name: 'Core i7-13700K	Raptor Lake-S	',
    core_count: 16,
    threads: 24,
    min_freq:	3.4,
    max_freq: 5.4,
    tdp:	125,
    properties: {
      socket: 'Socket 1700',
      size: '10 nm',
      l3_cache:	'30MB',
      release_date: 'Sep 27th, 2022'
    }
  },
  {
    name: 'Ryzen 3 2200G	Raven Ridge',
    core_count: 4,
    threads: 4,
    min_freq:	3.5,
    max_freq: 3.7,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '14 nm',
      l3_cache:	'4MB',
      release_date: 'Feb 12th, 2018'
    }
  },
  {
    name: 'Ryzen 5 5500U	Lucienne',
    core_count:	6,
    threads: 12,
    min_freq:	2.1,
    max_freq: 4,
    tdp:	15,
    properties: {
      socket: 'Socket FP6',
      size: '7 nm',
      l3_cache:	'8MB',
      release_date: 'Jan 12th, 2021'
    }
  },
  {
    name: 'Core i5-13500	Raptor Lake-S	',
    core_count: 14,
    threads: 20,
    min_freq:	2.5,
    max_freq: 4.8,
    tdp:	65,
    properties: {
      socket: 'Socket 1700',
      size: '10 nm',
      l3_cache:	'24MB',
      release_date: 'Jan 4th, 2023'
    }
  },
  {
    name: 'Ryzen 5 7600X	Raphael',
    core_count:	6,
    threads: 12,
    min_freq:	4.7,
    max_freq: 5.3,
    tdp:	105,
    properties: {
      socket: 'Socket AM5',
      size: '5 nm',
      l3_cache:	'32MB',
      release_date: 'Sep 27th, 2022'
    }
  },
  {
    name: 'Core i5-3470	Ivy Bridge',
    core_count:	4,
    threads: 4,
    min_freq:	3.2,
    max_freq: 3.6,
    tdp:	77,
    properties: {
      socket: 'Socket 1155',
      size: '22 nm',
      l3_cache:	'6MB',
      release_date: 'Jun 1st, 2012'
    }
  },
  {
    name: 'FX-8350	Vishera',	core_count: 8,
    threads: 8,
    min_freq:	4,
    tdp:	125,
    properties: {
      max_freq: 4.2,
      socket: 'Socket AM3+', size: '32 nm',
      l3_cache:	'8MB',
      release_date: 'Oct 23rd, 2012'
    }
  },
  {
    name: 'Xeon E5-2696 v3	Haswell-EP	',
    core_count: 18,
    threads: 36,
    min_freq:	2.3,
    max_freq: 3.8,
    tdp:	145,
    properties: {
      socket: 'Socket 2011 - 3',
      size: '22 nm',
      l3_cache:	'45MB',
      release_date: 'Sep 8th, 2014'
    }
  },
  {
    name: 'Ryzen 5 4500	Renoir',
    core_count:	6,
    threads: 12,
    min_freq:	3.6,
    max_freq: 4.1,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'8MB',
      release_date: 'Apr 4th, 2022'
    }
  },
  {
    name: 'Ryzen 5 7600	Raphael',
    core_count:	6,
    threads: 12,
    min_freq:	3.8,
    max_freq: 5.1,
    tdp:	65,
    properties: {
      socket: 'Socket AM5',
      size: '5 nm',
      l3_cache:	'32MB',
      release_date: 'Jan 14th, 2023'
    }
  },
  {
    name: 'Ryzen 9 7940HS	Phoenix',
    core_count:	8,
    threads: 16,
    min_freq:	4,
    max_freq: 5.2,
    tdp:	35,
    properties: {
      socket: 'Socket FP8',
      size: '4 nm',
      l3_cache:	'16MB',
      release_date: 'Jan 2023'
    }
  },
  {
    name: 'Core i5-6500	Skylake',
    core_count:	4,
    threads: 4,
    min_freq:	3.2,
    max_freq: 3.6,
    tdp:	65,
    properties: {
      socket: 'Socket 1151',
      size: '14 nm',
      l3_cache:	'6MB',
      release_date: 'Jul 2nd, 2015'
    }
  },
  {
    name: 'Ryzen 7 1700	Zen',
    core_count:	8,
    threads: 16,
    min_freq:	3,
    tdp:	65,
    properties: {
      max_freq: 3.7,
      socket: 'Socket AM4', size: '14 nm',
      l3_cache:	'16MB',
      release_date: 'Mar 2nd, 2017'
    }
  },
  {
    name: 'Ryzen 9 7900X	Raphael	',
    core_count: 12,
    threads: 24,
    min_freq:	4.7,
    max_freq: 5.6,
    tdp:	170,
    properties: {
      socket: 'Socket AM5',
      size: '5 nm',
      l3_cache:	'64MB',
      release_date: 'Sep 27th, 2022'
    }
  },
  {
    name: 'Core i5-1235U	Alder Lake-U	',
    core_count: 10,
    threads: 12,
    min_freq:	1.3,
    tdp:	15,
    properties: {
      max_freq: 4.4,	socket: 'BGA 1744',
      size: '10 nm',
      l3_cache:	'12MB',
      release_date: 'Feb 23rd, 2022'
    }
  },
  {
    name: 'Core i7-4790	Haswell',
    core_count:	4,
    threads: 8,
    min_freq:	3.6,
    max_freq: 4,
    tdp:	84,
    properties: {
      socket: 'Socket 1150',
      size: '22 nm',
      l3_cache:	'8MB',
      release_date: 'May 1st, 2014'
    }
  },
  {
    name: 'Ryzen 5 2600X	Zen',
    core_count:	6,
    threads: 12,
    min_freq:	3.6,
    max_freq: 4.25,
    tdp:	95,
    properties: {
      socket: 'Socket AM4',
      size: '12 nm',
      l3_cache:	'16MB',
      release_date: 'Apr 19th, 2018'
    }
  },
  {
    name: 'Ryzen 9 3900X	Matisse	',
    core_count: 12,
    threads: 24,
    min_freq:	3.8,
    max_freq: 4.6,
    tdp:	105,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'64MB',
      release_date: 'Jul 7th, 2019'
    }
  },
  {
    name: 'Core i7-3770	Ivy Bridge',
    core_count:	4,
    threads: 8,
    min_freq:	3.4,
    max_freq: 3.9,
    tdp:	77,
    properties: {
      socket: 'Socket 1155',
      size: '22 nm',
      l3_cache:	'8MB',
      release_date: 'Apr 29th, 2012'
    }
  },
  {
    name: 'Ryzen 3 1200	Zen',
    core_count: 4,
    threads: 4,
    min_freq:	3.1,
    tdp:	65,
    properties: {
      max_freq: 3.4,
      socket: 'Socket AM4', size: '14 nm',
      l3_cache:	'8MB',
      release_date: 'Jul 27th, 2017'
    }
  },
  {
    name: 'Ryzen 3 3250U	Raven Ridge',
    core_count:	2,
    threads: 4,
    min_freq:	2.6,
    max_freq: 3.5,
    tdp:	15,
    properties: {
      socket: 'Socket FP5',
      size: '14 nm',
      l3_cache:	'4MB',
      release_date: 'Jan 6th, 2020'
    }
  },
  {
    name: 'Ryzen 5 3600X	Matisse',
    core_count:	6,
    threads: 12,
    min_freq:	3.8,
    max_freq: 4.4,
    tdp:	95,
    properties: {
      socket: 'Socket AM4',
      size: '7 nm',
      l3_cache:	'32MB',
      release_date: 'Jul 7th, 2019'
    }
  },
  {
    name: 'Ryzen 5 2400G	Raven Ridge',
    core_count:	4,
    threads: 8,
    min_freq:	3.6,
    max_freq: 3.9,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '14 nm',
      l3_cache:	'4MB',
      release_date: 'Feb 12th, 2018'
    }
  },
  {
    name: 'Ryzen 5 3400G	Picasso',
    core_count:	4,
    threads: 8,
    min_freq:	3.7,
    max_freq: 4.2,
    tdp:	65,
    properties: {
      socket: 'Socket AM4',
      size: '12 nm',
      l3_cache:	'4MB',
      release_date: 'Jul 7th, 2019'
    }
  },
  {
    name: 'FX-6300	Vishera',
    core_count: 6,
    threads: 6,
    min_freq:	3.5,
    tdp:	95,
    properties: {
      max_freq: 4.1,
      socket: 'Socket AM3+', size: '32 nm',
      l3_cache:	'8MB',
      release_date: 'Oct 23rd, 2012'
    }
  },
  {
    name: 'Ryzen 7 7700X	Raphael',
    core_count:	8,
    threads: 16,
    min_freq:	4.5,
    max_freq: 5.4,
    tdp:	105,
    properties: {
      socket: 'Socket AM5',
      size: '5 nm',
      l3_cache:	'32MB',
      release_date: 'Sep 27th, 2022'
    }
  },
  {
    name: 'Ryzen 5 3500U	Picasso',
    core_count:	4,
    threads: 8,
    min_freq:	2.1,
    max_freq: 3.7,
    tdp:	15,
    properties: {
      socket: 'Socket FP5',
      size: '12 nm',
      l3_cache:	'4MB',
      release_date: 'Jan 6th, 2019'
    }
  }
]

videocards = [
  {
    name: 'GeForce RTX 4070',
    memory_size: 12,
    memory_type: ' GDDR6X',
    interface: 'PCIe 4.0 x16',
    properties: {
      freq: 1920,
      chip: 'AD104',
      release_date: 'Apr 12th, 2023',
      bus_size: '192 bit',
      memory_freq: '1313 MHz'
    }
  },
  {
    name: 'GeForce RTX 4090',
    memory_size: 24,
    memory_type: ' GDDR6X',
    interface: 'PCIe 4.0 x16',
    properties: {
      freq: 2235,
      chip: 'AD102',
      release_date: 'Sep 20th, 2022',
      bus_size: '384 bit',
      memory_freq: '1313 MHz'
    }
  },
  {
    name: 'Radeon RX 7600',
    memory_size: 8,
    memory_type: ' GDDR6',
    interface: 'PCIe 4.0 x8',
    properties: {
      freq: 1720,
      chip: 'Navi 33',
      release_date: 'May 24th, 2023',
      bus_size: '128 bit',
      memory_freq: '2250 MHz'
    }
  },
  {
    name: 'GeForce RTX 3060 12 GB',
    memory_size: 12,
    memory_type: ' GDDR6',
    interface: 'PCIe 4.0 x16',
    properties: {
      freq: 1320,
      chip: 'GA106',
      release_date: 'Jan 12th, 2021',
      bus_size: '192 bit',
      memory_freq: '1875 MHz'
    }
  },
  {
    name: 'GeForce RTX 3060 Ti',
    memory_size: 8,
    memory_type: ' GDDR6',
    interface: 'PCIe 4.0 x16',
    properties: {
      freq: 1410,
      chip: 'GA104',
      release_date: 'Dec 1st, 2020',
      bus_size: '256 bit',
      memory_freq: '1750 MHz'
    }
  },
  {
    name: 'Radeon RX 580',
    memory_size: 8,
    memory_type: ' GDDR5',
    interface: 'PCIe 3.0 x16',
    properties: {
      freq: 1257,
      chip: 'Polaris 20',
      release_date: 'Apr 18th, 2017',
      bus_size: '256 bit',
      memory_freq: '2000 MHz'
    }
  },
  {
    name: 'GeForce RTX 4060 Ti 8 GB',
    memory_size: 8,
    memory_type: ' GDDR6',
    interface: 'PCIe 4.0 x8',
    properties: {
      freq: 2310,
      chip: 'AD106',
      release_date: 'May 18th, 2023',
      bus_size: '128 bit',
      memory_freq: '2250 MHz'
    }
  },
  {
    name: 'Radeon RX 6700 XT',
    memory_size: 12,
    memory_type: ' GDDR6',
    interface: 'PCIe 4.0 x16',
    properties: {
      freq: 2321,
      chip: 'Navi 22',
      release_date: 'Mar 3rd, 2021',
      bus_size: '192 bit',
      memory_freq: '2000 MHz'
    }
  },
  {
    name: 'GeForce RTX 4070 Ti',
    memory_size: 12,
    memory_type: ' GDDR6X',
    interface: 'PCIe 4.0 x16',
    properties: {
      freq: 2310,
      chip: 'AD104',
      release_date: 'Jan 3rd, 2023',
      bus_size: '192 bit',
      memory_freq: '1313 MHz'
    }
  }
]

solid_drives = [
  {
    name: 'Acer SA100',
    interface: 'SATA/AHCI',
    capacity: 2000,
    read_speed: 560,
    write_speed: 500
  },
  {
    name: 'Acer FA100',
    interface: 'x4 PCIe 3.0/NVMe',
    capacity: 2000,
    read_speed: 3300,
    write_speed: 2700
  },
  {
    name: 'Acer GM3500',
    interface: 'x4 PCIe 3.0/NVMe',
    capacity: 1000,
    read_speed: 3400,
    write_speed: 3000
  },
  {
    name: 'Acer GM7000 (Predator)',
    interface: 'x4 PCIe 4.0/NVMe',
    capacity: 2000,
    read_speed: 7400,
    write_speed: 6400
  },
  {
    name: 'Acer RE100',
    interface: 'SATA/AHCI',
    capacity: 4000,
    read_speed: 560,
    write_speed: 520
  },
  {
    name: 'ADATA ATOM 30',
    interface: 'x4 PCIe 3.0/NVMe',
    capacity: 1000,
    read_speed: 2500,
    write_speed: 2000
  },
  {
    name: 'ADATA ATOM 40',
    interface: 'x4 PCIe 4.0/NVMe',
    capacity: 1000,
    read_speed: 3500,
    write_speed: 3000
  },
  {
    name: 'ADATA ATOM 50',
    interface: 'x4 PCIe 4.0/NVMe',
    capacity: 1000,
    read_speed: 5000,
    write_speed: 4500
  },
  {
    name: 'ADATA Falcon',
    interface: 'x4 PCIe 3.0/NVMe',
    capacity: 2000,
    read_speed: 3100,
    write_speed: 1500
  }
]

hard_drives = [
  {
    name: 'WD Gold 12TB', capacity: 12_000, form_factor: '3.5', cache: 256
  },
  {
    name: 'Seagate BarraCuda 1TB ST1000DM010', capacity: 1000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Seagate IronWolf 4TB ST4000VN008', capacity: 4000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Toshiba P300 2TB', capacity: 2000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Western Digital Black 2TB WD2003FZEX', capacity: 2000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Western Digital Gold 2TB Enterprise', capacity: 2000, form_factor: '3.5', cache: 128
  },
  {
    name: 'Seagate Barracuda ST2000DM008 2TB', capacity: 2000, form_factor: '3.5', cache: 256
  },
  {
    name: 'WD Gold 1TB Enterprise', capacity: 1000, form_factor: '3.5', cache: 128
  },
  {
    name: 'Toshiba P300 1TB', capacity: 1000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Seagate IronWolf 2TB NAS ST2000VN004', capacity: 2000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Seagate IronWolf 3TB NAS ST3000VN007', capacity: 3000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Western Digital Caviar Blue 1TB', capacity: 1000, form_factor: '3.5', cache: 64
  },
  {
    name: 'WD Purple 6TB WD60PURZ', capacity: 6000, form_factor: '3.5', cache: 64
  },
  {
    name: 'WD Black 1TB WD1003FZEX', capacity: 1000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Seagate SkyHawk 2TB ST2000VX008', capacity: 2000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Seagate IronWolf 1TB NAS ST1000VN002', capacity: 1000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Western Digital Red 6TB NAS', capacity: 6000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Seagate SkyHawk 1TB ST1000VX005', capacity: 1000, form_factor: '3.5', cache: 64
  },
  {
    name: 'WD Purple 3TB WD30PURZ', capacity: 3000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Western Digital Red 4TB', capacity: 4000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Western Digital 500GB WD Black', capacity: 500, form_factor: '3.5', cache: 64
  },
  {
    name: 'Western Digital 2TB WD Purple', capacity: 2000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Seagate 8TB Barracuda ST8000DM004', capacity: 8000, form_factor: '3.5', cache: 256
  },
  {
    name: 'WD Red 6TB WD60EFAX', capacity: 6000, form_factor: '3.5', cache: 256
  },
  {
    name: 'Western Digital Blue 1TB WD10EZRZ', capacity: 1000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Western Digital 1TB WD Purple', capacity: 1000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Seagate 4TB BarraCuda ST4000DM004', capacity: 4000, form_factor: '3.5', cache: 256
  },
  {
    name: 'Western Digital Purple 3TB WD30PURX', capacity: 3000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Western Digital 1TB WD Red Plus', capacity: 1000, form_factor: '3.5', cache: 64
  },
  {
    name: 'WD Purple 2TB WD20PURX', capacity: 2000, form_factor: '3.5', cache: 64
  },
  {
    name: 'Seagate Barracuda 3TB ST3000DM007', capacity: 3000, form_factor: '3.5', cache: 256
  }
]

memory_kits = [
  {
    name: 'Corsair Dominator',
    speed: 3600,
    timing: 'C18',
    capacity: 8,
    module_count: 2,
    form_factor: 'DIMM',
    memory_type: 'DDR4'
  },
  {
    name: 'Corsair Dominator',
    speed: 4000,
    timing: 'C19',
    capacity: 8,
    module_count: 2,
    form_factor: 'DIMM',
    memory_type: 'DDR4'
  },
  {
    name: 'Corsair Dominator  (chrome)',
    speed: 3200,
    timing: 'C14',
    capacity: 16,
    module_count: 2,
    form_factor: 'DIMM',
    memory_type: 'DDR4'
  },
  {
    name: 'Corsair Dominator  (black)',
    speed: 3200,
    timing: 'C14',
    capacity: 16,
    module_count: 2,
    form_factor: 'DIMM',
    memory_type: 'DDR4'
  },
  {
    name: 'Corsair Dominator  (torque)',
    speed: 3200,
    timing: 'C14',
    capacity: 16,
    module_count: 2,
    form_factor: 'DIMM',
    memory_type: 'DDR4'
  },
  {
    name: 'Corsair Dominator',
    speed: 3600,
    timing: 'C16',
    capacity: 8,
    module_count: 4,
    form_factor: 'DIMM',
    memory_type: 'DDR4'
  },
  {
    name: 'Corsair Dominator  (chrome)',
    speed: 3200,
    timing: 'C14',
    capacity: 8,
    module_count: 4,
    form_factor: 'DIMM',
    memory_type: 'DDR4'
  },
  {
    name: 'Corsair Dominator  (black)',
    speed: 3200,
    timing: 'C14',
    capacity: 8,
    module_count: 4,
    form_factor: 'DIMM',
    memory_type: 'DDR4'
  },
  {
    name: 'Corsair Dominator  (torque)',
    speed: 3200,
    timing: 'C14',
    capacity: 8,
    module_count: 4,
    form_factor: 'DIMM',
    memory_type: 'DDR4'
  },
  {
    name: 'Corsair Dominator',
    speed: 4000,
    timing: 'C19',
    capacity: 8,
    module_count: 4,
    form_factor: 'DIMM',
    memory_type: 'DDR4'
  },
  {
    name: 'ADATA XPG Lancer',
    speed: 6400,
    timing: 'CL32-39-39',
    capacity: 16,
    module_count: 2,
    form_factor: 'DIMM',
    memory_type: 'DDR5'
  },
  {
    name: 'Kingston FURY Beast',
    speed: 5200,
    timing: 'C40',
    capacity: 16,
    module_count: 2,
    form_factor: 'DIMM',
    memory_type: 'DDR5'
  }
]

categories = [
  {
    name: 'Процессоры', items: processors, description_model: Processor
  },
  {
    name: 'Видеокарты', items: videocards, description_model: Videocard
  },
  {
    name: 'Твердотельные накопители', items: solid_drives, description_model: SolidDrive
  },
  {
    name: 'Жесткоие диски', items: hard_drives, description_model: HardDrive
  },
  {
    name: 'Оперативная память', items: memory_kits, description_model: MemoryKit
  }
]

categories.each do |category_data|
  category = Category.create!(name: category_data[:name])
  category_data[:items].each do |item|
    product_description_model = category_data[:description_model]
    product_description = product_description_model.create(item.except(:name))
    Product.create(name: item[:name], category: category, description: product_description)
  end
end
