package Paws::Glue::Crawl;
  use Moose;
  has CompletedOn => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has LogGroup => (is => 'ro', isa => 'Str');
  has LogStream => (is => 'ro', isa => 'Str');
  has StartedOn => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Crawl

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Crawl object:

  $service_obj->Method(Att1 => { CompletedOn => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Crawl object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletedOn

=head1 DESCRIPTION

The details of a crawl in the workflow.

=head1 ATTRIBUTES


=head2 CompletedOn => Str

  The date and time on which the crawl completed.


=head2 ErrorMessage => Str

  The error message associated with the crawl.


=head2 LogGroup => Str

  The log group associated with the crawl.


=head2 LogStream => Str

  The log stream associated with the crawl.


=head2 StartedOn => Str

  The date and time on which the crawl started.


=head2 State => Str

  The state of the crawler.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

