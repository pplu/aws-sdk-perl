# Generated by default/object.tt
package Paws::Appflow::ZendeskDestinationProperties;
  use Moose;
  has ErrorHandlingConfig => (is => 'ro', isa => 'Paws::Appflow::ErrorHandlingConfig', request_name => 'errorHandlingConfig', traits => ['NameInRequest']);
  has IdFieldNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'idFieldNames', traits => ['NameInRequest']);
  has Object => (is => 'ro', isa => 'Str', request_name => 'object', traits => ['NameInRequest'], required => 1);
  has WriteOperationType => (is => 'ro', isa => 'Str', request_name => 'writeOperationType', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::ZendeskDestinationProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Appflow::ZendeskDestinationProperties object:

  $service_obj->Method(Att1 => { ErrorHandlingConfig => $value, ..., WriteOperationType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Appflow::ZendeskDestinationProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorHandlingConfig

=head1 DESCRIPTION

The properties that are applied when Zendesk is used as a destination.

=head1 ATTRIBUTES


=head2 ErrorHandlingConfig => L<Paws::Appflow::ErrorHandlingConfig>




=head2 IdFieldNames => ArrayRef[Str|Undef]




=head2 B<REQUIRED> Object => Str

The object specified in the Zendesk flow destination.


=head2 WriteOperationType => Str





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

