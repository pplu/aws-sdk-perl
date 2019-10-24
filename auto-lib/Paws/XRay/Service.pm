# Generated from default/object.tt
package Paws::XRay::Service;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int Bool/;
  use Paws::XRay::Types qw/XRay_ServiceStatistics XRay_HistogramEntry XRay_Edge/;
  has AccountId => (is => 'ro', isa => Str);
  has DurationHistogram => (is => 'ro', isa => ArrayRef[XRay_HistogramEntry]);
  has Edges => (is => 'ro', isa => ArrayRef[XRay_Edge]);
  has EndTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Names => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ReferenceId => (is => 'ro', isa => Int);
  has ResponseTimeHistogram => (is => 'ro', isa => ArrayRef[XRay_HistogramEntry]);
  has Root => (is => 'ro', isa => Bool);
  has StartTime => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has SummaryStatistics => (is => 'ro', isa => XRay_ServiceStatistics);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Root' => {
                           'type' => 'Bool'
                         },
               'SummaryStatistics' => {
                                        'class' => 'Paws::XRay::ServiceStatistics',
                                        'type' => 'XRay_ServiceStatistics'
                                      },
               'Names' => {
                            'type' => 'ArrayRef[Str|Undef]'
                          },
               'State' => {
                            'type' => 'Str'
                          },
               'Edges' => {
                            'class' => 'Paws::XRay::Edge',
                            'type' => 'ArrayRef[XRay_Edge]'
                          },
               'ResponseTimeHistogram' => {
                                            'class' => 'Paws::XRay::HistogramEntry',
                                            'type' => 'ArrayRef[XRay_HistogramEntry]'
                                          },
               'ReferenceId' => {
                                  'type' => 'Int'
                                },
               'Type' => {
                           'type' => 'Str'
                         },
               'AccountId' => {
                                'type' => 'Str'
                              },
               'DurationHistogram' => {
                                        'class' => 'Paws::XRay::HistogramEntry',
                                        'type' => 'ArrayRef[XRay_HistogramEntry]'
                                      },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'Name' => {
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

Paws::XRay::Service

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::Service object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::Service object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Information about an application that processed requests, users that
made requests, or downstream services, resources and applications that
an application used.

=head1 ATTRIBUTES


=head2 AccountId => Str

  Identifier of the AWS account in which the service runs.


=head2 DurationHistogram => ArrayRef[XRay_HistogramEntry]

  A histogram that maps the spread of service durations.


=head2 Edges => ArrayRef[XRay_Edge]

  Connections to downstream services.


=head2 EndTime => Str

  The end time of the last segment that the service generated.


=head2 Name => Str

  The canonical name of the service.


=head2 Names => ArrayRef[Str|Undef]

  A list of names for the service, including the canonical name.


=head2 ReferenceId => Int

  Identifier for the service. Unique within the service map.


=head2 ResponseTimeHistogram => ArrayRef[XRay_HistogramEntry]

  A histogram that maps the spread of service response times.


=head2 Root => Bool

  Indicates that the service was the first service to process a request.


=head2 StartTime => Str

  The start time of the first segment that the service generated.


=head2 State => Str

  The service's state.


=head2 SummaryStatistics => XRay_ServiceStatistics

  Aggregated statistics for the service.


=head2 Type => Str

  The type of service.

=over

=item *

AWS Resource - The type of an AWS resource. For example,
C<AWS::EC2::Instance> for a application running on Amazon EC2 or
C<AWS::DynamoDB::Table> for an Amazon DynamoDB table that the
application used.

=item *

AWS Service - The type of an AWS service. For example, C<AWS::DynamoDB>
for downstream calls to Amazon DynamoDB that didn't target a specific
table.

=item *

C<client> - Represents the clients that sent requests to a root
service.

=item *

C<remote> - A downstream service of indeterminate type.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

