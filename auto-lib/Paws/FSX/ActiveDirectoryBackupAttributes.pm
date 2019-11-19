# Generated from default/object.tt
package Paws::FSX::ActiveDirectoryBackupAttributes;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::FSX::Types qw//;
  has ActiveDirectoryId => (is => 'ro', isa => Str);
  has DomainName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ActiveDirectoryId' => {
                                        'type' => 'Str'
                                      },
               'DomainName' => {
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

Paws::FSX::ActiveDirectoryBackupAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::ActiveDirectoryBackupAttributes object:

  $service_obj->Method(Att1 => { ActiveDirectoryId => $value, ..., DomainName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::ActiveDirectoryBackupAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveDirectoryId

=head1 DESCRIPTION

The Microsoft AD attributes of the Amazon FSx for Windows File Server
file system.

=head1 ATTRIBUTES


=head2 ActiveDirectoryId => Str

  The ID of the AWS Managed Microsoft Active Directory instance to which
the file system is joined.


=head2 DomainName => Str

  The fully qualified domain name of the self-managed AD directory.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

