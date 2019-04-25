package Paws::Glue::Crawler;
  use Moose;
  has Classifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Configuration => (is => 'ro', isa => 'Str');
  has CrawlElapsedTime => (is => 'ro', isa => 'Int');
  has CrawlerSecurityConfiguration => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastCrawl => (is => 'ro', isa => 'Paws::Glue::LastCrawlInfo');
  has LastUpdated => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Paws::Glue::Schedule');
  has SchemaChangePolicy => (is => 'ro', isa => 'Paws::Glue::SchemaChangePolicy');
  has State => (is => 'ro', isa => 'Str');
  has TablePrefix => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'Paws::Glue::CrawlerTargets');
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Crawler

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Crawler object:

  $service_obj->Method(Att1 => { Classifiers => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Crawler object:

  $result = $service_obj->Method(...);
  $result->Att1->Classifiers

=head1 DESCRIPTION

Specifies a crawler program that examines a data source and uses
classifiers to try to determine its schema. If successful, the crawler
records metadata concerning the data source in the AWS Glue Data
Catalog.

=head1 ATTRIBUTES


=head2 Classifiers => ArrayRef[Str|Undef]

  A list of custom classifiers associated with the crawler.


=head2 Configuration => Str

  Crawler configuration information. This versioned JSON string allows
users to specify aspects of a crawler's behavior. For more information,
see Configuring a Crawler
(http://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html).


=head2 CrawlElapsedTime => Int

  If the crawler is running, contains the total time elapsed since the
last crawl began.


=head2 CrawlerSecurityConfiguration => Str

  The name of the SecurityConfiguration structure to be used by this
Crawler.


=head2 CreationTime => Str

  The time when the crawler was created.


=head2 DatabaseName => Str

  The database where metadata is written by this crawler.


=head2 Description => Str

  A description of the crawler.


=head2 LastCrawl => L<Paws::Glue::LastCrawlInfo>

  The status of the last crawl, and potentially error information if an
error occurred.


=head2 LastUpdated => Str

  The time the crawler was last updated.


=head2 Name => Str

  The crawler name.


=head2 Role => Str

  The IAM role (or ARN of an IAM role) used to access customer resources,
such as data in Amazon S3.


=head2 Schedule => L<Paws::Glue::Schedule>

  For scheduled crawlers, the schedule when the crawler runs.


=head2 SchemaChangePolicy => L<Paws::Glue::SchemaChangePolicy>

  Sets the behavior when the crawler finds a changed or deleted object.


=head2 State => Str

  Indicates whether the crawler is running, or whether a run is pending.


=head2 TablePrefix => Str

  The prefix added to the names of tables that are created.


=head2 Targets => L<Paws::Glue::CrawlerTargets>

  A collection of targets to crawl.


=head2 Version => Int

  The version of the crawler.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

