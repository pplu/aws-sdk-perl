# Generated from default/object.tt
package Paws::Cloud9::Environment;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Cloud9::Types qw/Cloud9_EnvironmentLifecycle/;
  has Arn => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Lifecycle => (is => 'ro', isa => Cloud9_EnvironmentLifecycle);
  has Name => (is => 'ro', isa => Str);
  has OwnerArn => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'Id' => {
                         'type' => 'Str'
                       },
               'OwnerArn' => {
                               'type' => 'Str'
                             },
               'Lifecycle' => {
                                'class' => 'Paws::Cloud9::EnvironmentLifecycle',
                                'type' => 'Cloud9_EnvironmentLifecycle'
                              },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Type' => 'type',
                       'Id' => 'id',
                       'OwnerArn' => 'ownerArn',
                       'Lifecycle' => 'lifecycle',
                       'Arn' => 'arn',
                       'Name' => 'name',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::Environment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Cloud9::Environment object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Cloud9::Environment object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about an AWS Cloud9 development environment.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the environment.


=head2 Description => Str

  The description for the environment.


=head2 Id => Str

  The ID of the environment.


=head2 Lifecycle => Cloud9_EnvironmentLifecycle

  The state of the environment in its creation or deletion lifecycle.


=head2 Name => Str

  The name of the environment.


=head2 OwnerArn => Str

  The Amazon Resource Name (ARN) of the environment owner.


=head2 Type => Str

  The type of environment. Valid values include the following:

=over

=item *

C<ec2>: An Amazon Elastic Compute Cloud (Amazon EC2) instance connects
to the environment.

=item *

C<ssh>: Your own server connects to the environment.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Cloud9>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

