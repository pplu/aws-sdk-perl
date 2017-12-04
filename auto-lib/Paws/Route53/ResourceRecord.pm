package Paws::Route53::ResourceRecord;
  use Moose;
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ResourceRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::ResourceRecord object:

  $service_obj->Method(Att1 => { Value => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::ResourceRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->Value

=head1 DESCRIPTION

Information specific to the resource record.

If you're creating an alias resource record set, omit
C<ResourceRecord>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Value => Str

  The current or new DNS record value, not to exceed 4,000 characters. In
the case of a C<DELETE> action, if the current value does not match the
actual value, an error is returned. For descriptions about how to
format C<Value> for different record types, see Supported DNS Resource
Record Types
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html)
in the I<Amazon Route 53 Developer Guide>.

You can specify more than one value for all record types except
C<CNAME> and C<SOA>.

If you're creating an alias resource record set, omit C<Value>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

