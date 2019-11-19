# Generated from callargs_class.tt

package Paws::ElasticBeanstalk::DescribeEvents;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ElasticBeanstalk::Types qw//;
  has ApplicationName => (is => 'ro', isa => Str, predicate => 1);
  has EndTime => (is => 'ro', isa => Str, predicate => 1);
  has EnvironmentId => (is => 'ro', isa => Str, predicate => 1);
  has EnvironmentName => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has PlatformArn => (is => 'ro', isa => Str, predicate => 1);
  has RequestId => (is => 'ro', isa => Str, predicate => 1);
  has Severity => (is => 'ro', isa => Str, predicate => 1);
  has StartTime => (is => 'ro', isa => Str, predicate => 1);
  has TemplateName => (is => 'ro', isa => Str, predicate => 1);
  has VersionLabel => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeEvents');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ElasticBeanstalk::EventDescriptionsMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeEventsResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'EnvironmentId' => {
                                    'type' => 'Str'
                                  },
               'TemplateName' => {
                                   'type' => 'Str'
                                 },
               'Severity' => {
                               'type' => 'Str'
                             },
               'ApplicationName' => {
                                      'type' => 'Str'
                                    },
               'VersionLabel' => {
                                   'type' => 'Str'
                                 },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'MaxRecords' => {
                                 'type' => 'Int'
                               },
               'EnvironmentName' => {
                                      'type' => 'Str'
                                    },
               'RequestId' => {
                                'type' => 'Str'
                              },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'PlatformArn' => {
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

Paws::ElasticBeanstalk::DescribeEvents - Arguments for method DescribeEvents on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEvents on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method DescribeEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEvents.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To view events for an environment
    # The following operation retrieves events for an environment named my-env:
    my $EventDescriptionsMessage =
      $elasticbeanstalk->DescribeEvents( 'EnvironmentName' => 'my-env' );

    # Results:
    my $Events = $EventDescriptionsMessage->Events;

    # Returns a L<Paws::ElasticBeanstalk::EventDescriptionsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/DescribeEvents>

=head1 ATTRIBUTES


=head2 ApplicationName => Str

If specified, AWS Elastic Beanstalk restricts the returned descriptions
to include only those associated with this application.



=head2 EndTime => Str

If specified, AWS Elastic Beanstalk restricts the returned descriptions
to those that occur up to, but not including, the C<EndTime>.



=head2 EnvironmentId => Str

If specified, AWS Elastic Beanstalk restricts the returned descriptions
to those associated with this environment.



=head2 EnvironmentName => Str

If specified, AWS Elastic Beanstalk restricts the returned descriptions
to those associated with this environment.



=head2 MaxRecords => Int

Specifies the maximum number of events that can be returned, beginning
with the most recent event.



=head2 NextToken => Str

Pagination token. If specified, the events return the next batch of
results.



=head2 PlatformArn => Str

The ARN of the version of the custom platform.



=head2 RequestId => Str

If specified, AWS Elastic Beanstalk restricts the described events to
include only those associated with this request ID.



=head2 Severity => Str

If specified, limits the events returned from this call to include only
those with the specified severity or higher.

Valid values are: C<"TRACE">, C<"DEBUG">, C<"INFO">, C<"WARN">, C<"ERROR">, C<"FATAL">

=head2 StartTime => Str

If specified, AWS Elastic Beanstalk restricts the returned descriptions
to those that occur on or after this time.



=head2 TemplateName => Str

If specified, AWS Elastic Beanstalk restricts the returned descriptions
to those that are associated with this environment configuration.



=head2 VersionLabel => Str

If specified, AWS Elastic Beanstalk restricts the returned descriptions
to those associated with this application version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEvents in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

