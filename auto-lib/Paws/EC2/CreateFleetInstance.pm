package Paws::EC2::CreateFleetInstance;
  use Moo;  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::EC2::Types qw/EC2_LaunchTemplateAndOverridesResponse/;
  has InstanceIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has InstanceType => (is => 'ro', isa => Str);
  has LaunchTemplateAndOverrides => (is => 'ro', isa => EC2_LaunchTemplateAndOverridesResponse);
  has Lifecycle => (is => 'ro', isa => Str);
  has Platform => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Platform' => {
                               'type' => 'Str'
                             },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'Lifecycle' => {
                                'type' => 'Str'
                              },
               'InstanceIds' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'LaunchTemplateAndOverrides' => {
                                                 'class' => 'Paws::EC2::LaunchTemplateAndOverridesResponse',
                                                 'type' => 'EC2_LaunchTemplateAndOverridesResponse'
                                               }
             },
  'NameInRequest' => {
                       'Platform' => 'platform',
                       'InstanceType' => 'instanceType',
                       'Lifecycle' => 'lifecycle',
                       'InstanceIds' => 'instanceIds',
                       'LaunchTemplateAndOverrides' => 'launchTemplateAndOverrides'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateFleetInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CreateFleetInstance object:

  $service_obj->Method(Att1 => { InstanceIds => $value, ..., Platform => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CreateFleetInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceIds

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 InstanceIds => ArrayRef[Str|Undef]

  The IDs of the instances.


=head2 InstanceType => Str

  The instance type.


=head2 LaunchTemplateAndOverrides => EC2_LaunchTemplateAndOverridesResponse

  The launch templates and overrides that were used for launching the
instances. Any parameters that you specify in the Overrides override
the same parameters in the launch template.


=head2 Lifecycle => Str

  Indicates if the instance that was launched is a Spot Instance or
On-Demand Instance.


=head2 Platform => Str

  The value is C<Windows> for Windows instances; otherwise blank.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
