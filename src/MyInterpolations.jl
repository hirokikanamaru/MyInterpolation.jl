module MyInterpolations

export my_lin_interp

function my_lin_interp(grid, vals)
  function func(x)
    for i in 1:(length(grid)-1)
      if (grid[i]<=x)&&(x<=grid[i+1])
        return ((vals[i+1]-vals[i])/(grid[i+1]-grid[i]))*(x-grid[i])+vals[i]
      end
    end
  end

  return func
end

end