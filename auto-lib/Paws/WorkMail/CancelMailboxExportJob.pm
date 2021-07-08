
package Paws::WorkMail::CancelMailboxExportJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelMailboxExportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::CancelMailboxExportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CancelMailboxExportJob - Arguments for method CancelMailboxExportJob on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelMailboxExportJob on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method CancelMailboxExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelMailboxExportJob.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $CancelMailboxExportJobResponse = $workmail->CancelMailboxExportJob(
      ClientToken    => 'MyIdempotencyClientToken',
      JobId          => 'MyMailboxExportJobId',
      OrganizationId => 'MyOrganizationId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/CancelMailboxExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The idempotency token for the client request.



=head2 B<REQUIRED> JobId => Str

The job ID.



=head2 B<REQUIRED> OrganizationId => Str

The organization ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelMailboxExportJob in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

