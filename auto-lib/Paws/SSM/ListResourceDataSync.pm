
package Paws::SSM::ListResourceDataSync;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceDataSync');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::ListResourceDataSyncResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListResourceDataSync - Arguments for method ListResourceDataSync on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceDataSync on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method ListResourceDataSync.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceDataSync.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $ListResourceDataSyncResult = $ssm->ListResourceDataSync(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListResourceDataSyncResult->NextToken;
    my $ResourceDataSyncItems =
      $ListResourceDataSyncResult->ResourceDataSyncItems;

    # Returns a L<Paws::SSM::ListResourceDataSyncResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/ListResourceDataSync>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceDataSync in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

