# Generated from default/object.tt
package Paws::ElastiCache::CacheSubnetGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_Subnet/;
  has CacheSubnetGroupDescription => (is => 'ro', isa => Str);
  has CacheSubnetGroupName => (is => 'ro', isa => Str);
  has Subnets => (is => 'ro', isa => ArrayRef[ElastiCache_Subnet]);
  has VpcId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcId' => {
                            'type' => 'Str'
                          },
               'Subnets' => {
                              'class' => 'Paws::ElastiCache::Subnet',
                              'type' => 'ArrayRef[ElastiCache_Subnet]'
                            },
               'CacheSubnetGroupDescription' => {
                                                  'type' => 'Str'
                                                },
               'CacheSubnetGroupName' => {
                                           'type' => 'Str'
                                         }
             },
  'NameInRequest' => {
                       'Subnets' => 'Subnet'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheSubnetGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::CacheSubnetGroup object:

  $service_obj->Method(Att1 => { CacheSubnetGroupDescription => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::CacheSubnetGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheSubnetGroupDescription

=head1 DESCRIPTION

Represents the output of one of the following operations:

=over

=item *

C<CreateCacheSubnetGroup>

=item *

C<ModifyCacheSubnetGroup>

=back


=head1 ATTRIBUTES


=head2 CacheSubnetGroupDescription => Str

  The description of the cache subnet group.


=head2 CacheSubnetGroupName => Str

  The name of the cache subnet group.


=head2 Subnets => ArrayRef[ElastiCache_Subnet]

  A list of subnets associated with the cache subnet group.


=head2 VpcId => Str

  The Amazon Virtual Private Cloud identifier (VPC ID) of the cache
subnet group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

