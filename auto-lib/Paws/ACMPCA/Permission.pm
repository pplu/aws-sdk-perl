# Generated from default/object.tt
package Paws::ACMPCA::Permission;
  use Moo;
  use Types::Standard qw/Undef ArrayRef Str/;
  use Paws::ACMPCA::Types qw//;
  has Actions => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has CertificateAuthorityArn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has Policy => (is => 'ro', isa => Str);
  has Principal => (is => 'ro', isa => Str);
  has SourceAccount => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceAccount' => {
                                    'type' => 'Str'
                                  },
               'CertificateAuthorityArn' => {
                                              'type' => 'Str'
                                            },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Actions' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'Policy' => {
                             'type' => 'Str'
                           },
               'Principal' => {
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

Paws::ACMPCA::Permission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACMPCA::Permission object:

  $service_obj->Method(Att1 => { Actions => $value, ..., SourceAccount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACMPCA::Permission object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Permissions designate which private CA actions can be performed by an
AWS service or entity. In order for ACM to automatically renew private
certificates, you must give the ACM service principal all available
permissions (C<IssueCertificate>, C<GetCertificate>, and
C<ListPermissions>). Permissions can be assigned with the
CreatePermission action, removed with the DeletePermission action, and
listed with the ListPermissions action.

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[Str|Undef]

  The private CA actions that can be performed by the designated AWS
service.


=head2 CertificateAuthorityArn => Str

  The Amazon Resource Number (ARN) of the private CA from which the
permission was issued.


=head2 CreatedAt => Str

  The time at which the permission was created.


=head2 Policy => Str

  The name of the policy that is associated with the permission.


=head2 Principal => Str

  The AWS service or entity that holds the permission. At this time, the
only valid principal is C<acm.amazonaws.com>.


=head2 SourceAccount => Str

  The ID of the account that assigned the permission.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

