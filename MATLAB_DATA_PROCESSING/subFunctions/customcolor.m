function ColorSet=customcolor(NumberOfPlots,set)
    if exist('set')~=1
        set=1;
    end
    if exist('NumberOfPlots')~=1
        NumberOfPlots=8;
    end
    colors =[
   0.850000000000000   0.330000000000000   0.100000000000000;
   0.890909090909091   0.512727272727273   0.345454545454545;
   0.931818181818182   0.695454545454545   0.590909090909091;
   0.959090909090909   0.817272727272727   0.754545454545455;
   1.000000000000000   1.000000000000000   1.000000000000000];
switch set
    case 1
        ColorChoice=[  ...
                    rgb('DarkGreen');...
                    rgb('LawnGreen');...
                    rgb('Orange');...
                    rgb('DarkRed');...
                    rgb('Violet');...
                    rgb('MediumSlateBlue');...
                    rgb('MediumBlue');...
                    rgb('DeepSkyBlue');...
                    ];
    case 2
        ColorChoice=[  ...
                    rgb('DarkGreen');...
                    rgb('Orange');...
                    rgb('DarkRed');...
                    rgb('Violet');...
                    rgb('MediumBlue');...
                    rgb('DeepSkyBlue');...
                    rgb('Grey');...
                    rgb('Black');
                    ];
    case 3
        ColorChoice=[  ...
                    rgb('Navy');...
                    rgb('LawnGreen');...
                    rgb('OrangeRed');...
                    ];
    case 4
        ColorChoice=[  ...
                    rgb('Indigo');...
                    rgb('Gold');...
                    ];
        case 5
        ColorChoice=[  ...
                    rgb('DarkGreen');...
                    rgb('DeepSkyBlue');...
                    rgb('BlueViolet');...
                    rgb('Red');...
                    rgb('DarkOrange');...
                    ];
    case 102
        ColorChoice=[  ...
                    rgb('DarkGreen');...
                    rgb('Gold');...
                    rgb('DeepSkyBlue');...
                    ];
    case 201
        ColorChoice=[  ...
                    rgb('Red');...
                    rgb('Gold');...
                    rgb('Indigo');...
                    ];
    case 301
        ColorChoice=[  ...
                    %rgb('MediumBlue');...
                    colors(1,:);...
                    rgb('White');...
                    ];
    case 302
        ColorChoice=[  ...
                    %rgb('DarkMagenta');...
                    colors(3,:);...
                    rgb('White');...
                    ];
        case 303
        ColorChoice=[  ...
                    %rgb('ForestGreen');...
                    colors(5,:);...
                    rgb('White');...
                    ];
end

no_col=size(ColorChoice,1);
no_seg=no_col-1;

%%
ColorSet=[]; 
if set~=5
    ColorSet=[];ColorSEG=[];
    no_per_seg=ceil((NumberOfPlots)/no_seg*(no_col));
    for i=1:no_col-1
                for j=1:3
                    ColorSEG(:,j)=linspace(ColorChoice(i,j),ColorChoice(i+1,j),no_per_seg+2);
                end
                ColorSet=[ColorSet; ColorSEG(1:end-1,:)];
    end
        ColorSet=[ColorSet; ColorChoice(end,:)];
        ColorSet=ColorSet(round(linspace(1,size(ColorSet,1),NumberOfPlots),0),:);
else
    ColorSet=ColorChoice;
    %%
end


