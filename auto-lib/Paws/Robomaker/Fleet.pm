# Generated from default/object.tt
package Paws::Robomaker::Fleet;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Robomaker::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has LastDeploymentJob => (is => 'ro', isa => Str);
  has LastDeploymentStatus => (is => 'ro', isa => Str);
  has LastDeploymentTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastDeploymentStatus' => {
                                           'type' => 'Str'
                                         },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'LastDeploymentTime' => {
                                         'type' => 'Str'
                                       },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'LastDeploymentJob' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'LastDeploymentStatus' => 'lastDeploymentStatus',
                       'CreatedAt' => 'createdAt',
                       'LastDeploymentTime' => 'lastDeploymentTime',
                       'Arn' => 'arn',
                       'Name' => 'name',
                       'LastDeploymentJob' => 'lastDeploymentJob'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::Fleet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::Fleet object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::Fleet object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a fleet.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the fleet.


=head2 CreatedAt => Str

  The time, in milliseconds since the epoch, when the fleet was created.


=head2 LastDeploymentJob => Str

  The Amazon Resource Name (ARN) of the last deployment job.


=head2 LastDeploymentStatus => Str

  The status of the last fleet deployment.


=head2 LastDeploymentTime => Str

  The time of the last deployment.


=head2 Name => Str

  The name of the fleet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

