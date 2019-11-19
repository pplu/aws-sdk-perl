# Generated from default/object.tt
package Paws::ElastiCache::EngineDefaults;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::ElastiCache::Types qw/ElastiCache_CacheNodeTypeSpecificParameter ElastiCache_Parameter/;
  has CacheNodeTypeSpecificParameters => (is => 'ro', isa => ArrayRef[ElastiCache_CacheNodeTypeSpecificParameter]);
  has CacheParameterGroupFamily => (is => 'ro', isa => Str);
  has Marker => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => ArrayRef[ElastiCache_Parameter]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'CacheNodeTypeSpecificParameters' => 'CacheNodeTypeSpecificParameter',
                       'Parameters' => 'Parameter'
                     },
  'types' => {
               'CacheParameterGroupFamily' => {
                                                'type' => 'Str'
                                              },
               'Marker' => {
                             'type' => 'Str'
                           },
               'Parameters' => {
                                 'type' => 'ArrayRef[ElastiCache_Parameter]',
                                 'class' => 'Paws::ElastiCache::Parameter'
                               },
               'CacheNodeTypeSpecificParameters' => {
                                                      'type' => 'ArrayRef[ElastiCache_CacheNodeTypeSpecificParameter]',
                                                      'class' => 'Paws::ElastiCache::CacheNodeTypeSpecificParameter'
                                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::EngineDefaults

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::EngineDefaults object:

  $service_obj->Method(Att1 => { CacheNodeTypeSpecificParameters => $value, ..., Parameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::EngineDefaults object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheNodeTypeSpecificParameters

=head1 DESCRIPTION

Represents the output of a C<DescribeEngineDefaultParameters>
operation.

=head1 ATTRIBUTES


=head2 CacheNodeTypeSpecificParameters => ArrayRef[ElastiCache_CacheNodeTypeSpecificParameter]

  A list of parameters specific to a particular cache node type. Each
element in the list contains detailed information about one parameter.


=head2 CacheParameterGroupFamily => Str

  Specifies the name of the cache parameter group family to which the
engine default parameters apply.

Valid values are: C<memcached1.4> | C<memcached1.5> | C<redis2.6> |
C<redis2.8> | C<redis3.2> | C<redis4.0> | C<redis5.0> |


=head2 Marker => Str

  Provides an identifier to allow retrieval of paginated results.


=head2 Parameters => ArrayRef[ElastiCache_Parameter]

  Contains a list of engine default parameters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

