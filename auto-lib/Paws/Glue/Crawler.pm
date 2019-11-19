# Generated from default/object.tt
package Paws::Glue::Crawler;
  use Moo;
  use Types::Standard qw/Undef ArrayRef Str Int/;
  use Paws::Glue::Types qw/Glue_LastCrawlInfo Glue_SchemaChangePolicy Glue_Schedule Glue_CrawlerTargets/;
  has Classifiers => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Configuration => (is => 'ro', isa => Str);
  has CrawlElapsedTime => (is => 'ro', isa => Int);
  has CrawlerSecurityConfiguration => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has DatabaseName => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has LastCrawl => (is => 'ro', isa => Glue_LastCrawlInfo);
  has LastUpdated => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Role => (is => 'ro', isa => Str);
  has Schedule => (is => 'ro', isa => Glue_Schedule);
  has SchemaChangePolicy => (is => 'ro', isa => Glue_SchemaChangePolicy);
  has State => (is => 'ro', isa => Str);
  has TablePrefix => (is => 'ro', isa => Str);
  has Targets => (is => 'ro', isa => Glue_CrawlerTargets);
  has Version => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Targets' => {
                              'class' => 'Paws::Glue::CrawlerTargets',
                              'type' => 'Glue_CrawlerTargets'
                            },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'LastCrawl' => {
                                'class' => 'Paws::Glue::LastCrawlInfo',
                                'type' => 'Glue_LastCrawlInfo'
                              },
               'DatabaseName' => {
                                   'type' => 'Str'
                                 },
               'Name' => {
                           'type' => 'Str'
                         },
               'Schedule' => {
                               'type' => 'Glue_Schedule',
                               'class' => 'Paws::Glue::Schedule'
                             },
               'Configuration' => {
                                    'type' => 'Str'
                                  },
               'LastUpdated' => {
                                  'type' => 'Str'
                                },
               'State' => {
                            'type' => 'Str'
                          },
               'Classifiers' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'Version' => {
                              'type' => 'Int'
                            },
               'CrawlerSecurityConfiguration' => {
                                                   'type' => 'Str'
                                                 },
               'SchemaChangePolicy' => {
                                         'class' => 'Paws::Glue::SchemaChangePolicy',
                                         'type' => 'Glue_SchemaChangePolicy'
                                       },
               'Role' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'CrawlElapsedTime' => {
                                       'type' => 'Int'
                                     },
               'TablePrefix' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


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

  A list of UTF-8 strings that specify the custom classifiers that are
associated with the crawler.


=head2 Configuration => Str

  Crawler configuration information. This versioned JSON string allows
users to specify aspects of a crawler's behavior. For more information,
see Configuring a Crawler
(http://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html).


=head2 CrawlElapsedTime => Int

  If the crawler is running, contains the total time elapsed since the
last crawl began.


=head2 CrawlerSecurityConfiguration => Str

  The name of the C<SecurityConfiguration> structure to be used by this
crawler.


=head2 CreationTime => Str

  The time that the crawler was created.


=head2 DatabaseName => Str

  The name of the database in which the crawler's output is stored.


=head2 Description => Str

  A description of the crawler.


=head2 LastCrawl => Glue_LastCrawlInfo

  The status of the last crawl, and potentially error information if an
error occurred.


=head2 LastUpdated => Str

  The time that the crawler was last updated.


=head2 Name => Str

  The name of the crawler.


=head2 Role => Str

  The Amazon Resource Name (ARN) of an IAM role that's used to access
customer resources, such as Amazon Simple Storage Service (Amazon S3)
data.


=head2 Schedule => Glue_Schedule

  For scheduled crawlers, the schedule when the crawler runs.


=head2 SchemaChangePolicy => Glue_SchemaChangePolicy

  The policy that specifies update and delete behaviors for the crawler.


=head2 State => Str

  Indicates whether the crawler is running, or whether a run is pending.


=head2 TablePrefix => Str

  The prefix added to the names of tables that are created.


=head2 Targets => Glue_CrawlerTargets

  A collection of targets to crawl.


=head2 Version => Int

  The version of the crawler.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

