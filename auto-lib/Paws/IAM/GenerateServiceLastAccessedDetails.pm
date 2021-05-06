
package Paws::IAM::GenerateServiceLastAccessedDetails;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateServiceLastAccessedDetails');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GenerateServiceLastAccessedDetailsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GenerateServiceLastAccessedDetailsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GenerateServiceLastAccessedDetails - Arguments for method GenerateServiceLastAccessedDetails on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateServiceLastAccessedDetails on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GenerateServiceLastAccessedDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateServiceLastAccessedDetails.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $GenerateServiceLastAccessedDetailsResponse =
      $iam->GenerateServiceLastAccessedDetails(
      Arn => 'MyarnType',

      );

    # Results:
    my $JobId = $GenerateServiceLastAccessedDetailsResponse->JobId;

    # Returns a L<Paws::IAM::GenerateServiceLastAccessedDetailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GenerateServiceLastAccessedDetails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the IAM resource (user, group, role, or managed policy) used
to generate information about when the resource was last used in an
attempt to access an AWS service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateServiceLastAccessedDetails in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

