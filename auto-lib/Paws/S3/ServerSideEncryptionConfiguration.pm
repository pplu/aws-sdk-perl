# Generated from default/object.tt
package Paws::S3::ServerSideEncryptionConfiguration;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::S3::Types qw/S3_ServerSideEncryptionRule/;
  has Rules => (is => 'ro', isa => ArrayRef[S3_ServerSideEncryptionRule], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Rules' => {
                            'class' => 'Paws::S3::ServerSideEncryptionRule',
                            'type' => 'ArrayRef[S3_ServerSideEncryptionRule]'
                          }
             },
  'NameInRequest' => {
                       'Rules' => 'Rule'
                     },
  'IsRequired' => {
                    'Rules' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ServerSideEncryptionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ServerSideEncryptionConfiguration object:

  $service_obj->Method(Att1 => { Rules => $value, ..., Rules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ServerSideEncryptionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Rules

=head1 DESCRIPTION

Specifies the default server-side-encryption configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Rules => ArrayRef[S3_ServerSideEncryptionRule]

  Container for information about a particular server-side encryption
configuration rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

