# Generated from default/object.tt
package Paws::ElastiCache::NodeGroupUpdateStatus;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_NodeGroupMemberUpdateStatus/;
  has NodeGroupId => (is => 'ro', isa => Str);
  has NodeGroupMemberUpdateStatus => (is => 'ro', isa => ArrayRef[ElastiCache_NodeGroupMemberUpdateStatus]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NodeGroupId' => {
                                  'type' => 'Str'
                                },
               'NodeGroupMemberUpdateStatus' => {
                                                  'class' => 'Paws::ElastiCache::NodeGroupMemberUpdateStatus',
                                                  'type' => 'ArrayRef[ElastiCache_NodeGroupMemberUpdateStatus]'
                                                }
             },
  'NameInRequest' => {
                       'NodeGroupMemberUpdateStatus' => 'NodeGroupMemberUpdateStatus'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::NodeGroupUpdateStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::NodeGroupUpdateStatus object:

  $service_obj->Method(Att1 => { NodeGroupId => $value, ..., NodeGroupMemberUpdateStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::NodeGroupUpdateStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->NodeGroupId

=head1 DESCRIPTION

The status of the service update on the node group

=head1 ATTRIBUTES


=head2 NodeGroupId => Str

  The ID of the node group


=head2 NodeGroupMemberUpdateStatus => ArrayRef[ElastiCache_NodeGroupMemberUpdateStatus]

  The status of the service update on the node group member



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

