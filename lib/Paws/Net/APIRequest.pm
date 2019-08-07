package Paws::Net::APIRequest;
  use Moo;
  use HTTP::Headers;
  use URI;

  use Types::Standard qw/HashRef Str/;
  use Type::Utils qw/class_type/;

  my $HTTPHeaders = class_type 'HTTP::Headers';
  has parameters => (is => 'rw', isa => HashRef, default => sub { {} });
  has headers    => (is => 'rw', isa => $HTTPHeaders, default => sub { HTTP::Headers->new });
  has content    => (is => 'rw', isa => Str, default => '');
  has method     => (is => 'rw', isa => Str);
  has uri        => (is => 'rw', isa => Str);
  has url        => (is => 'rw', isa => Str);

  sub header {
    my ($self, $header, $value) = @_;
    $self->headers->header($header, $value) if (defined $value);
    return $self->headers->header($header);
  }

   sub header_hash {
     my $self = shift;
     my $headers = {};
     $self->headers->scan(sub { $headers->{ $_[0] } = $_[1] });
     return $headers;
   }
1;
