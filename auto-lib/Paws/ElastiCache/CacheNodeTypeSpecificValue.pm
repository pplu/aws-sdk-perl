package Paws::ElastiCache::CacheNodeTypeSpecificValue;
  use Moose;
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheNodeTypeSpecificValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::CacheNodeTypeSpecificValue object:

  $service_obj->Method(Att1 => { CacheNodeType => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::CacheNodeTypeSpecificValue object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheNodeType

=head1 DESCRIPTION

A value that applies only to a certain cache node type.

=head1 ATTRIBUTES


=head2 CacheNodeType => Str

  The cache node type for which this value applies.


=head2 Value => Str

  The value for the cache node type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

