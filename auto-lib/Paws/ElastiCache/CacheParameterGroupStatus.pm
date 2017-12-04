package Paws::ElastiCache::CacheParameterGroupStatus;
  use Moose;
  has CacheNodeIdsToReboot => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'CacheNodeId', traits => ['NameInRequest']);
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheParameterGroupStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::CacheParameterGroupStatus object:

  $service_obj->Method(Att1 => { CacheNodeIdsToReboot => $value, ..., ParameterApplyStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::CacheParameterGroupStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheNodeIdsToReboot

=head1 DESCRIPTION

Status of the cache parameter group.

=head1 ATTRIBUTES


=head2 CacheNodeIdsToReboot => ArrayRef[Str|Undef]

  A list of the cache node IDs which need to be rebooted for parameter
changes to be applied. A node ID is a numeric identifier (0001, 0002,
etc.).


=head2 CacheParameterGroupName => Str

  The name of the cache parameter group.


=head2 ParameterApplyStatus => Str

  The status of parameter updates.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

