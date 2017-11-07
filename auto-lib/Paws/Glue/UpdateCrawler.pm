
package Paws::Glue::UpdateCrawler;
  use Moose;
  has Classifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Role => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Str');
  has SchemaChangePolicy => (is => 'ro', isa => 'Paws::Glue::SchemaChangePolicy');
  has TablePrefix => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'Paws::Glue::CrawlerTargets');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCrawler');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateCrawlerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateCrawler - Arguments for method UpdateCrawler on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCrawler on the 
AWS Glue service. Use the attributes of this class
as arguments to method UpdateCrawler.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCrawler.

As an example:

  $service_obj->UpdateCrawler(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Classifiers => ArrayRef[Str|Undef]

A list of custom C<Classifier> names that the user has registered. By
default, all AWS classifiers are included in a crawl, but these custom
classifiers always override the default classifiers for a given
classification.



=head2 DatabaseName => Str

The Glue C<Database> where results will be stored, such as:
C<arn:aws:daylight:us-east-1::database/sometable/*>.



=head2 Description => Str

A description of the new C<Crawler>.



=head2 B<REQUIRED> Name => Str

Name of the new C<Crawler>.



=head2 Role => Str

The IAM role (or ARN of an IAM role) used by the new C<Crawler> to
access customer resources.



=head2 Schedule => Str

A C<cron> expression used to specify the schedule (see Time-Based
Schedules for Jobs and Crawlers
(http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html).
For example, to run something every day at 12:15 UTC, you would
specify: C<cron(15 12 * * ? *)>.



=head2 SchemaChangePolicy => L<Paws::Glue::SchemaChangePolicy>

Policy for the crawler's update and deletion behavior.



=head2 TablePrefix => Str

The table prefix used for catalog tables created.



=head2 Targets => L<Paws::Glue::CrawlerTargets>

A list of collection of targets to crawl.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCrawler in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

