package Paws::ElastiCache::CacheEngineVersion;
  use Moose;
  has CacheEngineDescription => (is => 'ro', isa => 'Str');
  has CacheEngineVersionDescription => (is => 'ro', isa => 'Str');
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheEngineVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::CacheEngineVersion object:

  $service_obj->Method(Att1 => { CacheEngineDescription => $value, ..., EngineVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::CacheEngineVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheEngineDescription

=head1 DESCRIPTION

Provides all of the details about a particular cache engine version.

=head1 ATTRIBUTES


=head2 CacheEngineDescription => Str

  The description of the cache engine.


=head2 CacheEngineVersionDescription => Str

  The description of the cache engine version.


=head2 CacheParameterGroupFamily => Str

  The name of the cache parameter group family associated with this cache
engine.

Valid values are: C<memcached1.4> | C<redis2.6> | C<redis2.8> |
C<redis3.2> | C<redis4.0>


=head2 Engine => Str

  The name of the cache engine.


=head2 EngineVersion => Str

  The version number of the cache engine.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

