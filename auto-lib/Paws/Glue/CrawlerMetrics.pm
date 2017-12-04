package Paws::Glue::CrawlerMetrics;
  use Moose;
  has CrawlerName => (is => 'ro', isa => 'Str');
  has LastRuntimeSeconds => (is => 'ro', isa => 'Num');
  has MedianRuntimeSeconds => (is => 'ro', isa => 'Num');
  has StillEstimating => (is => 'ro', isa => 'Bool');
  has TablesCreated => (is => 'ro', isa => 'Int');
  has TablesDeleted => (is => 'ro', isa => 'Int');
  has TablesUpdated => (is => 'ro', isa => 'Int');
  has TimeLeftSeconds => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CrawlerMetrics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::CrawlerMetrics object:

  $service_obj->Method(Att1 => { CrawlerName => $value, ..., TimeLeftSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::CrawlerMetrics object:

  $result = $service_obj->Method(...);
  $result->Att1->CrawlerName

=head1 DESCRIPTION

Metrics for a specified crawler.

=head1 ATTRIBUTES


=head2 CrawlerName => Str

  The name of the crawler.


=head2 LastRuntimeSeconds => Num

  The duration of the crawler's most recent run, in seconds.


=head2 MedianRuntimeSeconds => Num

  The median duration of this crawler's runs, in seconds.


=head2 StillEstimating => Bool

  True if the crawler is still estimating how long it will take to
complete this run.


=head2 TablesCreated => Int

  The number of tables created by this crawler.


=head2 TablesDeleted => Int

  The number of tables deleted by this crawler.


=head2 TablesUpdated => Int

  The number of tables updated by this crawler.


=head2 TimeLeftSeconds => Num

  The estimated time left to complete a running crawl.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

