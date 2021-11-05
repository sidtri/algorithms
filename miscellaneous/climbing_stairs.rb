# @param {Integer} n
# @return {Integer}
def climb_stairs(n, position=0, dp={})
	return 0 if position > n
	return 1 if position == n

	unless dp[position]
		dp[position] = climb_stairs(n, position + 1, dp) + climb_stairs(n, position + 2, dp)
	end

	return dp[position]
end

print(climb_stairs(35))