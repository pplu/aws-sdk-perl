# Generated from default/object.tt
package Paws::ECS::AwsVpcConfiguration;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ECS::Types qw//;
  has AssignPublicIp => (is => 'ro', isa => Str);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Subnets => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Subnets' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'AssignPublicIp' => {
                                     'type' => 'Str'
                                   },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             },
  'NameInRequest' => {
                       'Subnets' => 'subnets',
                       'AssignPublicIp' => 'assignPublicIp',
                       'SecurityGroups' => 'securityGroups'
                     },
  'IsRequired' => {
                    'Subnets' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::AwsVpcConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::AwsVpcConfiguration object:

  $service_obj->Method(Att1 => { AssignPublicIp => $value, ..., Subnets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::AwsVpcConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AssignPublicIp

=head1 DESCRIPTION

An object representing the networking details for a task or service.

=head1 ATTRIBUTES


=head2 AssignPublicIp => Str

  Whether the task's elastic network interface receives a public IP
address. The default value is C<DISABLED>.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  The security groups associated with the task or service. If you do not
specify a security group, the default security group for the VPC is
used. There is a limit of 5 security groups that can be specified per
C<AwsVpcConfiguration>.

All specified security groups must be from the same VPC.


=head2 B<REQUIRED> Subnets => ArrayRef[Str|Undef]

  The subnets associated with the task or service. There is a limit of 16
subnets that can be specified per C<AwsVpcConfiguration>.

All specified subnets must be from the same VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

