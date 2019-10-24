# Generated from default/object.tt
package Paws::CloudSearchDomain::BucketInfo;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::CloudSearchDomain::Types qw/CloudSearchDomain_Bucket/;
  has Buckets => (is => 'ro', isa => ArrayRef[CloudSearchDomain_Bucket]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Buckets' => {
                              'class' => 'Paws::CloudSearchDomain::Bucket',
                              'type' => 'ArrayRef[CloudSearchDomain_Bucket]'
                            }
             },
  'NameInRequest' => {
                       'Buckets' => 'buckets'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::BucketInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearchDomain::BucketInfo object:

  $service_obj->Method(Att1 => { Buckets => $value, ..., Buckets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearchDomain::BucketInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Buckets

=head1 DESCRIPTION

A container for the calculated facet values and counts.

=head1 ATTRIBUTES


=head2 Buckets => ArrayRef[CloudSearchDomain_Bucket]

  A list of the calculated facet values and counts.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

