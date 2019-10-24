# Generated from default/object.tt
package Paws::DynamoDB::SSEDescription;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw//;
  has KMSMasterKeyArn => (is => 'ro', isa => Str);
  has SSEType => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'SSEType' => {
                              'type' => 'Str'
                            },
               'KMSMasterKeyArn' => {
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

Paws::DynamoDB::SSEDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::SSEDescription object:

  $service_obj->Method(Att1 => { KMSMasterKeyArn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::SSEDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->KMSMasterKeyArn

=head1 DESCRIPTION

The description of the server-side encryption status on the specified
table.

=head1 ATTRIBUTES


=head2 KMSMasterKeyArn => Str

  The KMS customer master key (CMK) ARN used for the KMS encryption.


=head2 SSEType => Str

  Server-side encryption type. The only supported value is:

=over

=item *

C<KMS> - Server-side encryption which uses AWS Key Management Service.
Key is stored in your account and is managed by AWS KMS (KMS charges
apply).

=back



=head2 Status => Str

  Represents the current state of server-side encryption. The only
supported values are:

=over

=item *

C<ENABLED> - Server-side encryption is enabled.

=item *

C<UPDATING> - Server-side encryption is being updated.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

