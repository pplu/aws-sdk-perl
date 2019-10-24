# Generated from json/callargs_class.tt

package Paws::Glue::CreateCrawler;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Glue::Types qw/Glue_SchemaChangePolicy Glue_CrawlerTargets Glue_TagsMap/;
  has Classifiers => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Configuration => (is => 'ro', isa => Str, predicate => 1);
  has CrawlerSecurityConfiguration => (is => 'ro', isa => Str, predicate => 1);
  has DatabaseName => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Role => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Schedule => (is => 'ro', isa => Str, predicate => 1);
  has SchemaChangePolicy => (is => 'ro', isa => Glue_SchemaChangePolicy, predicate => 1);
  has TablePrefix => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => Glue_TagsMap, predicate => 1);
  has Targets => (is => 'ro', isa => Glue_CrawlerTargets, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateCrawler');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::CreateCrawlerResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TablePrefix' => {
                                  'type' => 'Str'
                                },
               'Role' => {
                           'type' => 'Str'
                         },
               'CrawlerSecurityConfiguration' => {
                                                   'type' => 'Str'
                                                 },
               'Configuration' => {
                                    'type' => 'Str'
                                  },
               'SchemaChangePolicy' => {
                                         'class' => 'Paws::Glue::SchemaChangePolicy',
                                         'type' => 'Glue_SchemaChangePolicy'
                                       },
               'Targets' => {
                              'class' => 'Paws::Glue::CrawlerTargets',
                              'type' => 'Glue_CrawlerTargets'
                            },
               'Tags' => {
                           'class' => 'Paws::Glue::TagsMap',
                           'type' => 'Glue_TagsMap'
                         },
               'Schedule' => {
                               'type' => 'Str'
                             },
               'Classifiers' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'DatabaseName' => {
                                   'type' => 'Str'
                                 },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Targets' => 1,
                    'Role' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateCrawler - Arguments for method CreateCrawler on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCrawler on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateCrawler.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCrawler.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateCrawlerResponse = $glue->CreateCrawler(
      Name    => 'MyNameString',
      Role    => 'MyRole',
      Targets => {
        CatalogTargets => [
          {
            DatabaseName => 'MyNameString',    # min: 1, max: 255
            Tables       => [
              'MyNameString', ...              # min: 1, max: 255
            ],                                 # min: 1

          },
          ...
        ],                                     # OPTIONAL
        DynamoDBTargets => [
          {
            Path => 'MyPath',                  # OPTIONAL
          },
          ...
        ],                                     # OPTIONAL
        JdbcTargets => [
          {
            ConnectionName => 'MyConnectionName',    # OPTIONAL
            Exclusions     => [
              'MyPath', ...                          # OPTIONAL
            ],                                       # OPTIONAL
            Path => 'MyPath',                        # OPTIONAL
          },
          ...
        ],                                           # OPTIONAL
        S3Targets => [
          {
            Exclusions => [
              'MyPath', ...                          # OPTIONAL
            ],                                       # OPTIONAL
            Path => 'MyPath',                        # OPTIONAL
          },
          ...
        ],                                           # OPTIONAL
      },
      Classifiers => [
        'MyNameString', ...                          # min: 1, max: 255
      ],                                             # OPTIONAL
      Configuration => 'MyCrawlerConfiguration',     # OPTIONAL
      CrawlerSecurityConfiguration =>
        'MyCrawlerSecurityConfiguration',            # OPTIONAL
      DatabaseName       => 'MyDatabaseName',        # OPTIONAL
      Description        => 'MyDescriptionString',   # OPTIONAL
      Schedule           => 'MyCronExpression',      # OPTIONAL
      SchemaChangePolicy => {
        DeleteBehavior => 'LOG'
        ,   # values: LOG, DELETE_FROM_DATABASE, DEPRECATE_IN_DATABASE; OPTIONAL
        UpdateBehavior => 'LOG',    # values: LOG, UPDATE_IN_DATABASE; OPTIONAL
      },    # OPTIONAL
      TablePrefix => 'MyTablePrefix',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateCrawler>

=head1 ATTRIBUTES


=head2 Classifiers => ArrayRef[Str|Undef]

A list of custom classifiers that the user has registered. By default,
all built-in classifiers are included in a crawl, but these custom
classifiers always override the default classifiers for a given
classification.



=head2 Configuration => Str

The crawler configuration information. This versioned JSON string
allows users to specify aspects of a crawler's behavior. For more
information, see Configuring a Crawler
(http://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html).



=head2 CrawlerSecurityConfiguration => Str

The name of the C<SecurityConfiguration> structure to be used by this
crawler.



=head2 DatabaseName => Str

The AWS Glue database where results are written, such as:
C<arn:aws:daylight:us-east-1::database/sometable/*>.



=head2 Description => Str

A description of the new crawler.



=head2 B<REQUIRED> Name => Str

Name of the new crawler.



=head2 B<REQUIRED> Role => Str

The IAM role or Amazon Resource Name (ARN) of an IAM role used by the
new crawler to access customer resources.



=head2 Schedule => Str

A C<cron> expression used to specify the schedule. For more
information, see Time-Based Schedules for Jobs and Crawlers
(http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html).
For example, to run something every day at 12:15 UTC, specify C<cron(15
12 * * ? *)>.



=head2 SchemaChangePolicy => Glue_SchemaChangePolicy

The policy for the crawler's update and deletion behavior.



=head2 TablePrefix => Str

The table prefix used for catalog tables that are created.



=head2 Tags => Glue_TagsMap

The tags to use with this crawler request. You can use tags to limit
access to the crawler. For more information, see AWS Tags in AWS Glue
(http://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html).



=head2 B<REQUIRED> Targets => Glue_CrawlerTargets

A list of collection of targets to crawl.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCrawler in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

