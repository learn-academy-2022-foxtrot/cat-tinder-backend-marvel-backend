#### Testing with Jest and React Testing Library

# $ git checkout -b test-coverage

### Cat Tinder Frontend folder

    -README.md
        JEST framework

    describe('my function or component', () => {
        test('does the following:', () => {
            expect()
        })
    })

## RTL -

    # src/package.json
        - @testing0-library/react": "13.2.1"

# $ yarn test

    ##  renders learn react link
        - fails at:
          - /src/App.test.js:
           
        import { render, screen } from '@testing-library/react';
        import App from './App';

        test(it)('renders learn react link', () => {
            render(<App />)
            const linkElement = scree.getByText(/learn react/i);
            expect(linkElement).toBeInTheDocument();
        });

## Delete it... after it passes(da heck?)

## pages/Home.js -

    /pages/home.test.js

    import { render, screen } from '@testing-library/react';
    import Home from './Home';

    describe('<Home />', () => {

# // user can see the home page

        test("renders the home page for the user", () => {

# // Triple A Approach: Arrange, Act, Assert

# // Arrange - set up a condition

            render(<Home />)

# // Act - interactions/passive

            const element = screen.getByText("It's like Tinder, but for Charactrs!")

# // Assert - What is expected

        expect(element).toBeInTheDocument()
        })
    })

    #### Essentially, we are just testing to see if it is working.

#### Creating new test: (for Header)

## components/Header.test.js

    import { render, screen } from '@testing-library/react';
    import Header from './Header';

    describe('<Header />', () => {
        test("renders the header without error", () => {
            render(
                <BrowserRouter>
                <Header />
                </BrowserRouter>
        const indexLink = screen.getByText('Meet the Cats')
        expect(indexLink).toBeInTheDocument()
        })
        test('Header has clickable links', () => {
            render(
                <BrowserRouter>
                <Header />
                </BrowserRouter>
            )
#           Add: import userEvent from "@testing-library/react"
#           // userEvent - test click on link works
            userEvent.click(screen.grtByText("Meet the Cats"))
            expect(screen.getByText("Meet the Cats")).toBeInTheDocument().toBeInTheDocument()
        });
    });

    # Test Fails...
    ## passes after putting in "<BrowserRouter/>"

## Go to App.js

    - Check:
      - 
