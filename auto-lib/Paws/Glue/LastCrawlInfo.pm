package Paws::Glue::LastCrawlInfo;
  use Moose;
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has LogGroup => (is => 'ro', isa => 'Str');
  has LogStream => (is => 'ro', isa => 'Str');
  has MessagePrefix => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::LastCrawlInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::LastCrawlInfo object:

  $service_obj->Method(Att1 => { ErrorMessage => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::LastCrawlInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorMessage

=head1 DESCRIPTION

Status and error information about the most recent crawl.

=head1 ATTRIBUTES


=head2 ErrorMessage => Str

  If an error occurred, the error information about the last crawl.


=head2 LogGroup => Str

  The log group for the last crawl.


=head2 LogStream => Str

  The log stream for the last crawl.


=head2 MessagePrefix => Str

  The prefix for a message about this crawl.


=head2 StartTime => Str

  The time at which the crawl started.


=head2 Status => Str

  Status of the last crawl.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

