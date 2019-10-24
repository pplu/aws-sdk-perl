# Generated from default/object.tt
package Paws::S3::AccessControlPolicy;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::S3::Types qw/S3_Grant S3_Owner/;
  has Grants => (is => 'ro', isa => ArrayRef[S3_Grant]);
  has Owner => (is => 'ro', isa => S3_Owner);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Owner' => {
                            'class' => 'Paws::S3::Owner',
                            'type' => 'S3_Owner'
                          },
               'Grants' => {
                             'class' => 'Paws::S3::Grant',
                             'type' => 'ArrayRef[S3_Grant]'
                           }
             },
  'NameInRequest' => {
                       'Grants' => 'AccessControlList'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::AccessControlPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::AccessControlPolicy object:

  $service_obj->Method(Att1 => { Grants => $value, ..., Owner => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::AccessControlPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->Grants

=head1 DESCRIPTION

Contains the elements that set the ACL permissions for an object per
grantee.

=head1 ATTRIBUTES


=head2 Grants => ArrayRef[S3_Grant]

  A list of grants.


=head2 Owner => S3_Owner

  Container for the bucket owner's display name and ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

