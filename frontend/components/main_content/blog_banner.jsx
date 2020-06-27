import React from 'react'
import { Link, withRouter } from "react-router-dom";


class BlogBanner extends React.Component {
  constructor(props) {
    super(props);

    this.clickBlogCard = this.clickBlogCard.bind(this);
  }

  clickBlogCard(e, searchTerm) {
    e.preventDefault();

    if (searchTerm === "spongebob") {
      this.props.history.push("/search?query=spongebob");
    } else if (searchTerm === "home") {
      this.props.history.push("/search?category=home%20living");
    } else if (searchTerm === "pikachu") {
      this.props.history.push("/search?query=pokemon");
    }
  }

  render() {
    return (
      <div className="blog-banner-container" id="inner">
        <div className="blog-banner-text">
          <h3>The Meme Exchange</h3>
          <a href="#">What's trending</a>
        </div>

        <div className="blog-card-container">
          <div className="blog-card" onClick={(e) => this.clickBlogCard(e, "spongebob")}>
            <img src="spongebob-memes.jpg" alt="" />

            <div className="blog-card-text">
              <aside>ENTERTAINMENT</aside>
              <h4>Mihoy Minoy: Spongebob's Most Meme-able Moments</h4>
              <p>
                From Caveman Spongebob to Handsome Squidward, the Spongebob
                Squarepants series have provided countless laughs and reactions
                to the meme community. Our creators celebrate the show's
                memorable moments with these amazing handmade pieces.
              </p>
            </div>
          </div>

          <div className="blog-card" onClick={(e) => this.clickBlogCard(e, "home")}>
            <img src="print.jpg" alt="" />

            <div className="blog-card-text">
              <aside>HEALTH & LIFESTYLE</aside>
              <h4>Brighten Up Your Home With Custom Prints</h4>
              <p>
                Start fresh this summer! We've rounded up the best products to
                enhance your home and lifestyle. Brighten up your living space
                with a decorative Animal Crossing Lamp, or add a splash of color
                to your walls with a Doge print.
              </p>
            </div>
          </div>

          <div className="blog-card" onClick={(e) => this.clickBlogCard(e, "pikachu")}>
            <img src="pikachu-perler.jpg" alt="" />

            <div className="blog-card-text">
              <aside>FUNNY</aside>
              <h4>What Surprised Pikachu Saw Will Shock You</h4>
              <p>
                Ever wonder why Ash never grows old? And what do carnivore
                Pokemon eat, if not other Pokemon? Memesy employees share their
                thoughts on debunking the series' biggest conspiracy theories.{" "}
              </p>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default BlogBanner
