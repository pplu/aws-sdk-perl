package Paws::Net::APIRequest {
  use Moose;
  use HTTP::Headers;
  use URI;

  has parameters => (is => 'rw', isa => 'HashRef', default => sub { {} });
  has headers    => (is => 'rw', isa => 'HTTP::Headers', default => sub { HTTP::Headers->new });
  has content    => (is => 'rw', isa => 'Str');
  has method     => (is => 'rw', isa => 'Str');
  has uri        => (is => 'rw', isa => 'Str');
  has url        => (is => 'rw', isa => 'Str');

  sub header {
    my ($self, $header, $value) = @_;
    $self->headers->header($header, $value) if (defined $value);
    return $self->headers->header($header);
  }

  sub generate_content_from_parameters {
    my $self = shift;
    $self->headers->content_type('application/x-www-form-urlencoded');
    my $url = URI->new('http:');
    $url->query_form($self->parameters);
    my $content = $url->query;
    # HTML/4.01 says that line breaks are represented as "CR LF" pairs (i.e., `%0D%0A')
    $content =~ s/(?<!%0D)%0A/%0D%0A/g if (defined $content);

    $self->content($content);
  }
}

1;
