package Paws::CloudWatch::DashboardValidationMessage;
  use Moose;
  has DataPath => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DashboardValidationMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::DashboardValidationMessage object:

  $service_obj->Method(Att1 => { DataPath => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::DashboardValidationMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->DataPath

=head1 DESCRIPTION

An error or warning for the operation.

=head1 ATTRIBUTES


=head2 DataPath => Str

  The data path related to the message.


=head2 Message => Str

  A message describing the error or warning.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

