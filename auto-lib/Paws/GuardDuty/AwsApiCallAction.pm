# Generated from default/object.tt
package Paws::GuardDuty::AwsApiCallAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw/GuardDuty_RemoteIpDetails GuardDuty_DomainDetails/;
  has Api => (is => 'ro', isa => Str);
  has CallerType => (is => 'ro', isa => Str);
  has DomainDetails => (is => 'ro', isa => GuardDuty_DomainDetails);
  has RemoteIpDetails => (is => 'ro', isa => GuardDuty_RemoteIpDetails);
  has ServiceName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceName' => {
                                  'type' => 'Str'
                                },
               'DomainDetails' => {
                                    'class' => 'Paws::GuardDuty::DomainDetails',
                                    'type' => 'GuardDuty_DomainDetails'
                                  },
               'RemoteIpDetails' => {
                                      'class' => 'Paws::GuardDuty::RemoteIpDetails',
                                      'type' => 'GuardDuty_RemoteIpDetails'
                                    },
               'Api' => {
                          'type' => 'Str'
                        },
               'CallerType' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'ServiceName' => 'serviceName',
                       'DomainDetails' => 'domainDetails',
                       'RemoteIpDetails' => 'remoteIpDetails',
                       'Api' => 'api',
                       'CallerType' => 'callerType'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::AwsApiCallAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::AwsApiCallAction object:

  $service_obj->Method(Att1 => { Api => $value, ..., ServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::AwsApiCallAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Api

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Api => Str

  AWS API name.


=head2 CallerType => Str

  AWS API caller type.


=head2 DomainDetails => GuardDuty_DomainDetails

  Domain information for the AWS API call.


=head2 RemoteIpDetails => GuardDuty_RemoteIpDetails

  Remote IP information of the connection.


=head2 ServiceName => Str

  AWS service name whose API was invoked.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

