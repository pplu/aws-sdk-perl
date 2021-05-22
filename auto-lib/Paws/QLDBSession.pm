package Paws::QLDBSession;
  use Moose;
  sub service { 'session.qldb' }
  sub signing_name { 'qldb' }
  sub version { '2019-07-11' }
  sub target_prefix { 'QLDBSession' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub SendCommand {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::QLDBSession::SendCommand', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/SendCommand / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDBSession - Perl Interface to AWS Amazon QLDB Session

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('QLDBSession');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

The transactional data APIs for Amazon QLDB

Instead of interacting directly with this API, we recommend using the
QLDB driver or the QLDB shell to execute data transactions on a ledger.

=over

=item *

If you are working with an AWS SDK, use the QLDB driver. The driver
provides a high-level abstraction layer above this I<QLDB Session> data
plane and manages C<SendCommand> API calls for you. For information and
a list of supported programming languages, see Getting started with the
driver
(https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html)
in the I<Amazon QLDB Developer Guide>.

=item *

If you are working with the AWS Command Line Interface (AWS CLI), use
the QLDB shell. The shell is a command line interface that uses the
QLDB driver to interact with a ledger. For information, see Accessing
Amazon QLDB using the QLDB shell
(https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html).

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/session.qldb-2019-07-11>


=head1 METHODS

=head2 SendCommand

=over

=item [AbortTransaction => L<Paws::QLDBSession::AbortTransactionRequest>]

=item [CommitTransaction => L<Paws::QLDBSession::CommitTransactionRequest>]

=item [EndSession => L<Paws::QLDBSession::EndSessionRequest>]

=item [ExecuteStatement => L<Paws::QLDBSession::ExecuteStatementRequest>]

=item [FetchPage => L<Paws::QLDBSession::FetchPageRequest>]

=item [SessionToken => Str]

=item [StartSession => L<Paws::QLDBSession::StartSessionRequest>]

=item [StartTransaction => L<Paws::QLDBSession::StartTransactionRequest>]


=back

Each argument is described in detail in: L<Paws::QLDBSession::SendCommand>

Returns: a L<Paws::QLDBSession::SendCommandResult> instance

Sends a command to an Amazon QLDB ledger.

Instead of interacting directly with this API, we recommend using the
QLDB driver or the QLDB shell to execute data transactions on a ledger.

=over

=item *

If you are working with an AWS SDK, use the QLDB driver. The driver
provides a high-level abstraction layer above this I<QLDB Session> data
plane and manages C<SendCommand> API calls for you. For information and
a list of supported programming languages, see Getting started with the
driver
(https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html)
in the I<Amazon QLDB Developer Guide>.

=item *

If you are working with the AWS Command Line Interface (AWS CLI), use
the QLDB shell. The shell is a command line interface that uses the
QLDB driver to interact with a ledger. For information, see Accessing
Amazon QLDB using the QLDB shell
(https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html).

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

