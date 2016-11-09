package Paws::Net::S3APIRequest;
  use Moose;
  extends 'Paws::Net::APIRequest';

  use URI;
  use HTTP::Date 'time2isoz';
  use MIME::Base64 qw(encode_base64);
  use Digest::MD5 'md5';

  has _uri_obj => (is => 'ro', isa => 'URI', lazy => 1, default => sub {
    return URI->new(shift->url);
  });

  #Code taken from https://metacpan.org/source/LEEJO/AWS-S3-0.10/lib/AWS/S3/Signer.pm
  has 'bucket_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
    lazy     => 1,
    default  => sub {
      my $s = shift;

      my $endpoint = $s->_uri_obj->host;
      if ( my ( $name ) = $endpoint =~ m{^(.+?)\.\Q$endpoint\E} ) {
        return $name;
      } else {
        return '';
      }    # end if()
    }
  );

  has 'date' => (
    is       => 'ro',
    isa      => 'Str',
    default  => sub {
      my $s = shift;
      my $http_date = time2isoz( time );
      $http_date =~ s/ /T/g;
      $http_date =~ s/[\:\-]//g;
      return $http_date;
    }
  );

  has 'content_type' => (
    is       => 'ro',
    isa      => 'Str',
    lazy     => 1,
    default  => sub {
      my $s = shift;
      return '' if $s->method eq 'GET';
      return '' unless $s->content;
      return 'text/plain';
    }
  );

  has 'content_md5' => (
    is       => 'ro',
    isa      => 'Str',
    lazy     => 1,
    default  => sub {
      my $s = shift;
      return '' unless $s->content;
      return encode_base64( md5( ${ $s->content } ), '' );
    }
  );

  has 'content_length' => (
    is       => 'ro',
    isa      => 'Int|Undef',
    lazy     => 1,
    default  => sub { length( shift->content || q[] ) }
  );

  sub _trim {
    my ( $value ) = @_;
    $value =~ s/^\s+//;
    $value =~ s/\s+$//;
    return $value;
  }
1;
