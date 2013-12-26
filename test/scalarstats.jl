using Stats
using Base.Test


## moments

@test_approx_eq skewness(1:5) 0.0
@test_approx_eq skewness([1, 2, 3, 4, 5]) 0.0
@test_approx_eq skewness([1, 2, 2, 2, 5]) 1.1731251294063556
@test_approx_eq skewness([1, 4, 4, 4, 5]) -1.1731251294063556

@test_approx_eq kurtosis(1:5) -1.3
@test_approx_eq kurtosis([1, 2, 3, 4, 5]) -1.3
@test_approx_eq kurtosis([1, 2, 3, 3, 2]) -1.1530612244897953

## variability

@test_approx_eq variation([1:5]) 0.527046276694730

@test_approx_eq sem([1:5]) 0.707106781186548

@test_approx_eq mad([1:5], 3) 1.4826
@test_approx_eq mad([1:5]) 1.4826
@test_approx_eq mad(1:5) 1.4826

# min/max related

@test minmax(1:5) == (1,5)
@test minmax([3, 2, 7, 1, 4]) == (1,7)
@test minmax([3.0, NaN, 1.0, NaN, 2.0]) == (1.0, 3.0)

@test_approx_eq midrange([1, 2, 3, 4, 5]) 3.0
@test_approx_eq midrange([1, 2, 2, 2, 5]) 3.0
@test_approx_eq midrange([1, 4, 4, 4, 5]) 3.0
@test_approx_eq midrange([1:5]) 3.0

@test_approx_eq range([1, 2, 3, 4, 5]) 4.0
@test_approx_eq range([1, 2, 2, 2, 5]) 4.0
@test_approx_eq range([1, 4, 4, 4, 5]) 4.0
@test_approx_eq range([1:15]) 14.0



# sem()

# variation()
