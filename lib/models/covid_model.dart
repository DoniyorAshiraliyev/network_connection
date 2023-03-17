class Covid {
  num updated;
  num cases;
  num todayCases;
  num deaths;
  num todayDeaths;
  num recovered;
  num todayRecovered;
  num active;
  num critical;
  num casesPerOneMillion;
  num deathsPerOneMillion;
  num tests;
  num testsPerOneMillion;
  num population;
  num oneCasePerPeople;
  num oneDeathPerPeople;
  num oneTestPerPeople;
  num activePerOneMillion;
  num recoveredPerOneMillion;
  num criticalPerOneMillion;
  num affectedCountries;

  Covid(
      this.updated,
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.todayRecovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.tests,
      this.testsPerOneMillion,
      this.population,
      this.oneCasePerPeople,
      this.oneDeathPerPeople,
      this.oneTestPerPeople,
      this.activePerOneMillion,
      this.recoveredPerOneMillion,
      this.criticalPerOneMillion,
      this.affectedCountries);

  factory Covid.fromJson(Map<String, dynamic> json) {
    num updated = json['updated'] as num;
    num cases = json['cases'] as num;
    num todayCases = json['todayCases'] as num;
    num deaths = json['deaths'] as num;
    num todayDeaths = json['todayDeaths'] as num;
    num recovered = json['recovered'] as num;
    num todayRecovered = json['todayRecovered'] as num;
    num active = json['active'] as num;
    num critical = json['critical'] as num;
    num casesPerOneMillion = json['casesPerOneMillion'] as num;
    num deathsPerOneMillion = json['deathsPerOneMillion'] as num;
    num tests = json['tests'] as num;
    num testsPerOneMillion = json['testsPerOneMillion'] as num;
    num population = json['population'] as num;
    num oneCasePerPeople = json['oneCasePerPeople'] as num;
    num oneDeathPerPeople = json['oneDeathPerPeople'] as num;
    num oneTestPerPeople = json['oneTestPerPeople'] as num;
    num activePerOneMillion = json['activePerOneMillion'] as num;
    num recoveredPerOneMillion = json['recoveredPerOneMillion'] as num;
    num criticalPerOneMillion = json['criticalPerOneMillion'] as num;
    num affectedCountries = json['affectedCountries'] as num;
    
    return Covid(updated, cases, todayCases, deaths, todayDeaths, recovered, todayRecovered, active, critical, casesPerOneMillion, deathsPerOneMillion, tests, testsPerOneMillion, population, oneCasePerPeople, oneDeathPerPeople, oneTestPerPeople, activePerOneMillion, recoveredPerOneMillion, criticalPerOneMillion, affectedCountries);
  }

  @override
  String toString() {
    return 'Covid{updated: $updated, cases: $cases, todayCases: $todayCases, deaths: $deaths, todayDeaths: $todayDeaths, recovered: $recovered, todayRecovered: $todayRecovered, active: $active, critical: $critical, casesPerOneMillion: $casesPerOneMillion, deathsPerOneMillion: $deathsPerOneMillion, tests: $tests, testsPerOneMillion: $testsPerOneMillion, population: $population, oneCasePerPeople: $oneCasePerPeople, oneDeathPerPeople: $oneDeathPerPeople, oneTestPerPeople: $oneTestPerPeople, activePerOneMillion: $activePerOneMillion, recoveredPerOneMillion: $recoveredPerOneMillion, criticalPerOneMillion: $criticalPerOneMillion, affectedCountries: $affectedCountries}';
  }
}