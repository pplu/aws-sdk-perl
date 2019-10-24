# Generated from default/object.tt
package Paws::EMR::ClusterSummary;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::EMR::Types qw/EMR_ClusterStatus/;
  has Id => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has NormalizedInstanceHours => (is => 'ro', isa => Int);
  has Status => (is => 'ro', isa => EMR_ClusterStatus);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NormalizedInstanceHours' => {
                                              'type' => 'Int'
                                            },
               'Id' => {
                         'type' => 'Str'
                       },
               'Status' => {
                             'class' => 'Paws::EMR::ClusterStatus',
                             'type' => 'EMR_ClusterStatus'
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

Paws::EMR::ClusterSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::ClusterSummary object:

  $service_obj->Method(Att1 => { Id => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::ClusterSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

The summary description of the cluster.

=head1 ATTRIBUTES


=head2 Id => Str

  The unique identifier for the cluster.


=head2 Name => Str

  The name of the cluster.


=head2 NormalizedInstanceHours => Int

  An approximation of the cost of the cluster, represented in
m1.small/hours. This value is incremented one time for every hour an
m1.small instance runs. Larger instances are weighted more, so an EC2
instance that is roughly four times more expensive would result in the
normalized instance hours being incremented by four. This result is
only an approximation and does not reflect the actual billing rate.


=head2 Status => EMR_ClusterStatus

  The details about the current status of the cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

