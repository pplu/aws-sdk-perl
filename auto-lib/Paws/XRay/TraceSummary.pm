# Generated from default/object.tt
package Paws::XRay::TraceSummary;
  use Moo;
  use Types::Standard qw/ArrayRef Num Bool Str Int/;
  use Paws::XRay::Types qw/XRay_ResourceARNDetail XRay_InstanceIdDetail XRay_AvailabilityZoneDetail XRay_FaultRootCause XRay_ServiceId XRay_Http XRay_ErrorRootCause XRay_TraceUser XRay_ResponseTimeRootCause XRay_Annotations/;
  has Annotations => (is => 'ro', isa => XRay_Annotations);
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[XRay_AvailabilityZoneDetail]);
  has Duration => (is => 'ro', isa => Num);
  has EntryPoint => (is => 'ro', isa => XRay_ServiceId);
  has ErrorRootCauses => (is => 'ro', isa => ArrayRef[XRay_ErrorRootCause]);
  has FaultRootCauses => (is => 'ro', isa => ArrayRef[XRay_FaultRootCause]);
  has HasError => (is => 'ro', isa => Bool);
  has HasFault => (is => 'ro', isa => Bool);
  has HasThrottle => (is => 'ro', isa => Bool);
  has Http => (is => 'ro', isa => XRay_Http);
  has Id => (is => 'ro', isa => Str);
  has InstanceIds => (is => 'ro', isa => ArrayRef[XRay_InstanceIdDetail]);
  has IsPartial => (is => 'ro', isa => Bool);
  has MatchedEventTime => (is => 'ro', isa => Str);
  has ResourceARNs => (is => 'ro', isa => ArrayRef[XRay_ResourceARNDetail]);
  has ResponseTime => (is => 'ro', isa => Num);
  has ResponseTimeRootCauses => (is => 'ro', isa => ArrayRef[XRay_ResponseTimeRootCause]);
  has Revision => (is => 'ro', isa => Int);
  has ServiceIds => (is => 'ro', isa => ArrayRef[XRay_ServiceId]);
  has Users => (is => 'ro', isa => ArrayRef[XRay_TraceUser]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FaultRootCauses' => {
                                      'class' => 'Paws::XRay::FaultRootCause',
                                      'type' => 'ArrayRef[XRay_FaultRootCause]'
                                    },
               'Users' => {
                            'class' => 'Paws::XRay::TraceUser',
                            'type' => 'ArrayRef[XRay_TraceUser]'
                          },
               'Revision' => {
                               'type' => 'Int'
                             },
               'Http' => {
                           'class' => 'Paws::XRay::Http',
                           'type' => 'XRay_Http'
                         },
               'Annotations' => {
                                  'class' => 'Paws::XRay::Annotations',
                                  'type' => 'XRay_Annotations'
                                },
               'ServiceIds' => {
                                 'class' => 'Paws::XRay::ServiceId',
                                 'type' => 'ArrayRef[XRay_ServiceId]'
                               },
               'ResponseTimeRootCauses' => {
                                             'class' => 'Paws::XRay::ResponseTimeRootCause',
                                             'type' => 'ArrayRef[XRay_ResponseTimeRootCause]'
                                           },
               'InstanceIds' => {
                                  'class' => 'Paws::XRay::InstanceIdDetail',
                                  'type' => 'ArrayRef[XRay_InstanceIdDetail]'
                                },
               'Duration' => {
                               'type' => 'Num'
                             },
               'HasFault' => {
                               'type' => 'Bool'
                             },
               'HasError' => {
                               'type' => 'Bool'
                             },
               'ResourceARNs' => {
                                   'class' => 'Paws::XRay::ResourceARNDetail',
                                   'type' => 'ArrayRef[XRay_ResourceARNDetail]'
                                 },
               'HasThrottle' => {
                                  'type' => 'Bool'
                                },
               'Id' => {
                         'type' => 'Str'
                       },
               'AvailabilityZones' => {
                                        'class' => 'Paws::XRay::AvailabilityZoneDetail',
                                        'type' => 'ArrayRef[XRay_AvailabilityZoneDetail]'
                                      },
               'IsPartial' => {
                                'type' => 'Bool'
                              },
               'ErrorRootCauses' => {
                                      'class' => 'Paws::XRay::ErrorRootCause',
                                      'type' => 'ArrayRef[XRay_ErrorRootCause]'
                                    },
               'ResponseTime' => {
                                   'type' => 'Num'
                                 },
               'EntryPoint' => {
                                 'class' => 'Paws::XRay::ServiceId',
                                 'type' => 'XRay_ServiceId'
                               },
               'MatchedEventTime' => {
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

Paws::XRay::TraceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::TraceSummary object:

  $service_obj->Method(Att1 => { Annotations => $value, ..., Users => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::TraceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Annotations

=head1 DESCRIPTION

Metadata generated from the segment documents in a trace.

=head1 ATTRIBUTES


=head2 Annotations => XRay_Annotations

  Annotations from the trace's segment documents.


=head2 AvailabilityZones => ArrayRef[XRay_AvailabilityZoneDetail]

  A list of availability zones for any zone corresponding to the trace
segments.


=head2 Duration => Num

  The length of time in seconds between the start time of the root
segment and the end time of the last segment that completed.


=head2 EntryPoint => XRay_ServiceId

  The root of a trace.


=head2 ErrorRootCauses => ArrayRef[XRay_ErrorRootCause]

  A collection of ErrorRootCause structures corresponding to the trace
segments.


=head2 FaultRootCauses => ArrayRef[XRay_FaultRootCause]

  A collection of FaultRootCause structures corresponding to the the
trace segments.


=head2 HasError => Bool

  One or more of the segment documents has a 400 series error.


=head2 HasFault => Bool

  One or more of the segment documents has a 500 series error.


=head2 HasThrottle => Bool

  One or more of the segment documents has a 429 throttling error.


=head2 Http => XRay_Http

  Information about the HTTP request served by the trace.


=head2 Id => Str

  The unique identifier for the request that generated the trace's
segments and subsegments.


=head2 InstanceIds => ArrayRef[XRay_InstanceIdDetail]

  A list of EC2 instance IDs for any instance corresponding to the trace
segments.


=head2 IsPartial => Bool

  One or more of the segment documents is in progress.


=head2 MatchedEventTime => Str

  The matched time stamp of a defined event.


=head2 ResourceARNs => ArrayRef[XRay_ResourceARNDetail]

  A list of resource ARNs for any resource corresponding to the trace
segments.


=head2 ResponseTime => Num

  The length of time in seconds between the start and end times of the
root segment. If the service performs work asynchronously, the response
time measures the time before the response is sent to the user, while
the duration measures the amount of time before the last traced
activity completes.


=head2 ResponseTimeRootCauses => ArrayRef[XRay_ResponseTimeRootCause]

  A collection of ResponseTimeRootCause structures corresponding to the
trace segments.


=head2 Revision => Int

  The revision number of a trace.


=head2 ServiceIds => ArrayRef[XRay_ServiceId]

  Service IDs from the trace's segment documents.


=head2 Users => ArrayRef[XRay_TraceUser]

  Users from the trace's segment documents.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

