-- Copyright © 2008-2022 Pioneer Developers. See AUTHORS.txt for details
-- Licensed under the terms of the GPL v3. See licenses/GPL-3.txt

local utils = require 'utils'
local CultureName = require './common'

local male = {
	'Afanasy',
	'Alexander',
	'Alexey',
	'Anatoly',
	'Andrey',
	'Anton',
	'Arkady',
	'Arthur',
	'Artyom',
	'Boris',
	'Constantine',
	'Dmitry',
	'Filipp',
	'Foma',
	'Fyodor',
	'Gleb',
	'Grigory',
	'Igor',
	'Ilya',
	'Iosif',
	'Ivan',
	'Kirill',
	'Leonid',
	'Lev',
	'Mark',
	'Matvey',
	'Maxim',
	'Mikhail',
	'Nikita',
	'Nikolay',
	'Oleg',
	'Pavel',
	'Petr',
	'Rodion',
	'Roman',
	'Rostislav',
	'Semyon',
	'Sergey',
	'Stanislav',
	'Stepan',
	'Vadim',
	'Valery',
	'Vasily',
	'Venedict',
	'Victor',
	'Vladimir',
	'Vladislav',
	'Vyacheslav',
	'Yakov',
	'Yaroslav'
}

local female = {
	'Alexandra',
	'Alina',
	'Alla',
	'Alyona',
	'Anastasia',
	'Angelika',
	'Anna',
	'Darya',
	'Ekaterina',
	'Elena',
	'Eleonora',
	'Elizaveta',
	'Elvira',
	'Eva',
	'Evgeniya',
	'Galina',
	'Ilona',
	'Irina',
	'Janna',
	'Klara',
	'Kristina',
	'Ksenia',
	'Larisa',
	'Lidia',
	'Lora',
	'Lyubov',
	'Lyudmila',
	'Margarita',
	'Maria',
	'Marina',
	'Nadezhda',
	'Natalia',
	'Nina',
	'Oksana',
	'Olga',
	'Polina',
	'Roksana',
	'Roza',
	'Sofya',
	'Svetlana',
	'Tamara',
	'Tatyana',
	'Ulyana',
	'Valeria',
	'Varvara',
	'Vera',
	'Victoria',
	'Yana',
	'Yulia',
	'Zoya'
}

local surname = {
	'Abramtsev',
	'Aleksandrov',
	'Baranov',
	'Belov',
	'Belyaev',
	'Bogdanov',
	'Borisov',
	'Dmitriyev',
	'Efimov',
	'Egorov',
	'Fedorov',
	'Filippov',
	'Frolov',
	'Gerasimov',
	'Golubev',
	'Grigoryev',
	'Ilyin',
	'Ivanov',
	'Kiselev',
	'Kovalev',
	'Kozlov',
	'Kuzmin',
	'Kuznetsov',
	'Lebedev',
	'Melnikov',
	'Mikhailov',
	'Mironov',
	'Morozov',
	'Nikitin',
	'Nikolayev',
	'Novikov',
	'Osipov',
	'Pavlov',
	'Petrov',
	'Polyakov',
	'Popov',
	'Semenov',
	'Smirnov',
	'Sokolov',
	'Sorokin',
	'Stepanov',
	'Tarasov',
	'Timofeev',
	'Vasilyev',
	'Volkov',
	'Vorobyov',
	'Yakovlev',
	'Zaitsev',
	'Zakharov',
	'Zhuravlev'
}

local Russian = CultureName.New(
{
	male = male,
	female = female,
	surname = surname,
	name = "Russian",
	code = "ru",
})

-- Russian surnames are gender specific
function Russian:Surname (isFemale, rand, ascii)
	local lastname = utils.chooseEqual(self.surname, rand)

	-- Append "a" to end of surname
	return isFemale and lastname .. "a" or lastname
end

return Russian