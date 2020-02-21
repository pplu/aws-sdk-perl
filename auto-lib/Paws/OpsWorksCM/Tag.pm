package Paws::OpsWorksCM::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorksCM::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorksCM::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A map that contains tag keys and tag values to attach to an AWS
OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise
server. Leading and trailing white spaces are trimmed from both the key
and value. A maximum of 50 user-applied tags is allowed for
tag-supported AWS OpsWorks-CM resources.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  A tag key, such as C<Stage> or C<Name>. A tag key cannot be empty. The
key can be a maximum of 127 characters, and can contain only Unicode
letters, numbers, or separators, or the following special characters:
C<+ - = . _ : />


=head2 B<REQUIRED> Value => Str

  An optional tag value, such as C<Production> or C<test-owcm-server>.
The value can be a maximum of 255 characters, and contain only Unicode
letters, numbers, or separators, or the following special characters:
C<+ - = . _ : />



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

