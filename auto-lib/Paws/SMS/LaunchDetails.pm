# Generated from default/object.tt
package Paws::SMS::LaunchDetails;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SMS::Types qw//;
  has LatestLaunchTime => (is => 'ro', isa => Str);
  has StackId => (is => 'ro', isa => Str);
  has StackName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LatestLaunchTime' => {
                                       'type' => 'Str'
                                     },
               'StackId' => {
                              'type' => 'Str'
                            },
               'StackName' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'LatestLaunchTime' => 'latestLaunchTime',
                       'StackId' => 'stackId',
                       'StackName' => 'stackName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::LaunchDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::LaunchDetails object:

  $service_obj->Method(Att1 => { LatestLaunchTime => $value, ..., StackName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::LaunchDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->LatestLaunchTime

=head1 DESCRIPTION

Details about the latest launch of an application.

=head1 ATTRIBUTES


=head2 LatestLaunchTime => Str

  Latest time this application was launched successfully.


=head2 StackId => Str

  Identifier of the latest stack launched for this application.


=head2 StackName => Str

  Name of the latest stack launched for this application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

