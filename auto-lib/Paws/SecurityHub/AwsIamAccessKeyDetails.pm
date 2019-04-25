package Paws::SecurityHub::AwsIamAccessKeyDetails;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsIamAccessKeyDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsIamAccessKeyDetails object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsIamAccessKeyDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

AWS IAM access key details related to a finding.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The creation date/time of the IAM access key related to a finding.


=head2 Status => Str

  The status of the IAM access key related to a finding.


=head2 UserName => Str

  The user associated with the IAM access key related to a finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

