# Generated from default/object.tt
package Paws::XRay::ServiceStatistics;
  use Moo;
  use Types::Standard qw/Int Num/;
  use Paws::XRay::Types qw/XRay_FaultStatistics XRay_ErrorStatistics/;
  has ErrorStatistics => (is => 'ro', isa => XRay_ErrorStatistics);
  has FaultStatistics => (is => 'ro', isa => XRay_FaultStatistics);
  has OkCount => (is => 'ro', isa => Int);
  has TotalCount => (is => 'ro', isa => Int);
  has TotalResponseTime => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FaultStatistics' => {
                                      'class' => 'Paws::XRay::FaultStatistics',
                                      'type' => 'XRay_FaultStatistics'
                                    },
               'ErrorStatistics' => {
                                      'class' => 'Paws::XRay::ErrorStatistics',
                                      'type' => 'XRay_ErrorStatistics'
                                    },
               'TotalResponseTime' => {
                                        'type' => 'Num'
                                      },
               'OkCount' => {
                              'type' => 'Int'
                            },
               'TotalCount' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::ServiceStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::ServiceStatistics object:

  $service_obj->Method(Att1 => { ErrorStatistics => $value, ..., TotalResponseTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::ServiceStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorStatistics

=head1 DESCRIPTION

Response statistics for a service.

=head1 ATTRIBUTES


=head2 ErrorStatistics => XRay_ErrorStatistics

  Information about requests that failed with a 4xx Client Error status
code.


=head2 FaultStatistics => XRay_FaultStatistics

  Information about requests that failed with a 5xx Server Error status
code.


=head2 OkCount => Int

  The number of requests that completed with a 2xx Success status code.


=head2 TotalCount => Int

  The total number of completed requests.


=head2 TotalResponseTime => Num

  The aggregate response time of completed requests.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

