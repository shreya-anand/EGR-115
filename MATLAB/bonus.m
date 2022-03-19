function bonusMoney = bonus(sales)
    % Purpose: calculate bonus based off of sales
    if sales >= 0 && sales <= 20000
        bonusMoney = 0;
    elseif sales > 20000 && sales <= 45000
        bonusMoney = 100;
    elseif sales > 45000 && sales <= 65000
        bonusMoney = 250;
    elseif sales > 65000 && sales <= 80000
        bonusMoney = 500;
    elseif sales > 80000
        bonusMoney = 1000;
    end

end