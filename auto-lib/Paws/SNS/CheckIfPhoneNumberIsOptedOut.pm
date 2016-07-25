
package Paws::SNS::CheckIfPhoneNumberIsOptedOut;
  use Moose;
  has PhoneNumber => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'phoneNumber' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckIfPhoneNumberIsOptedOut');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::CheckIfPhoneNumberIsOptedOutResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CheckIfPhoneNumberIsOptedOutResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::CheckIfPhoneNumberIsOptedOut - Arguments for method CheckIfPhoneNumberIsOptedOut on Paws::SNS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CheckIfPhoneNumberIsOptedOut on the 
Amazon Simple Notification Service service. Use the attributes of this class
as arguments to method CheckIfPhoneNumberIsOptedOut.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CheckIfPhoneNumberIsOptedOut.

As an example:

  $service_obj->CheckIfPhoneNumberIsOptedOut(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PhoneNumber => Str

The phone number for which you want to check the opt out status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CheckIfPhoneNumberIsOptedOut in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

