package Paws::IoT::SalesforceAction;
  use Moose;
  has Token => (is => 'ro', isa => 'Str', request_name => 'token', traits => ['NameInRequest'], required => 1);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::SalesforceAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::SalesforceAction object:

  $service_obj->Method(Att1 => { Token => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::SalesforceAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Token

=head1 DESCRIPTION

Describes an action to write a message to a Salesforce IoT Cloud Input
Stream.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Token => Str

  The token used to authenticate access to the Salesforce IoT Cloud Input
Stream. The token is available from the Salesforce IoT Cloud platform
after creation of the Input Stream.


=head2 B<REQUIRED> Url => Str

  The URL exposed by the Salesforce IoT Cloud Input Stream. The URL is
available from the Salesforce IoT Cloud platform after creation of the
Input Stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

