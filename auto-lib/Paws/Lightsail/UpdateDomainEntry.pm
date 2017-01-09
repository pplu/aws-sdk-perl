
package Paws::Lightsail::UpdateDomainEntry;
  use Moose;
  has DomainEntry => (is => 'ro', isa => 'Paws::Lightsail::DomainEntry', traits => ['NameInRequest'], request_name => 'domainEntry' , required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainEntry');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::UpdateDomainEntryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UpdateDomainEntry - Arguments for method UpdateDomainEntry on Paws::Lightsail

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainEntry on the 
Amazon Lightsail service. Use the attributes of this class
as arguments to method UpdateDomainEntry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainEntry.

As an example:

  $service_obj->UpdateDomainEntry(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainEntry => L<Paws::Lightsail::DomainEntry>

An array of key-value pairs containing information about the domain
entry.



=head2 B<REQUIRED> DomainName => Str

The name of the domain recordset to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainEntry in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

