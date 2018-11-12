package Paws::Macie;
  use Moose;
  sub service { 'macie' }
  sub signing_name { 'macie' }
  sub version { '2017-12-19' }
  sub target_prefix { 'MacieService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateMemberAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie::AssociateMemberAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateS3Resources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie::AssociateS3Resources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMemberAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie::DisassociateMemberAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateS3Resources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie::DisassociateS3Resources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMemberAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie::ListMemberAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListS3Resources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie::ListS3Resources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateS3Resources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Macie::UpdateS3Resources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateMemberAccount AssociateS3Resources DisassociateMemberAccount DisassociateS3Resources ListMemberAccounts ListS3Resources UpdateS3Resources / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie - Perl Interface to AWS Amazon Macie

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Macie');
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

Amazon Macie

Amazon Macie is a security service that uses machine learning to
automatically discover, classify, and protect sensitive data in AWS.
Macie recognizes sensitive data such as personally identifiable
information (PII) or intellectual property, and provides you with
dashboards and alerts that give visibility into how this data is being
accessed or moved. For more information, see the Macie User Guide
(https://docs.aws.amazon.com/macie/latest/userguide/what-is-macie.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19>


=head1 METHODS

=head2 AssociateMemberAccount

=over

=item MemberAccountId => Str


=back

Each argument is described in detail in: L<Paws::Macie::AssociateMemberAccount>

Returns: nothing

Associates a specified AWS account with Amazon Macie as a member
account.


=head2 AssociateS3Resources

=over

=item S3Resources => ArrayRef[L<Paws::Macie::S3ResourceClassification>]

=item [MemberAccountId => Str]


=back

Each argument is described in detail in: L<Paws::Macie::AssociateS3Resources>

Returns: a L<Paws::Macie::AssociateS3ResourcesResult> instance

Associates specified S3 resources with Amazon Macie for monitoring and
data classification. If memberAccountId isn't specified, the action
associates specified S3 resources with Macie for the current master
account. If memberAccountId is specified, the action associates
specified S3 resources with Macie for the specified member account.


=head2 DisassociateMemberAccount

=over

=item MemberAccountId => Str


=back

Each argument is described in detail in: L<Paws::Macie::DisassociateMemberAccount>

Returns: nothing

Removes the specified member account from Amazon Macie.


=head2 DisassociateS3Resources

=over

=item AssociatedS3Resources => ArrayRef[L<Paws::Macie::S3Resource>]

=item [MemberAccountId => Str]


=back

Each argument is described in detail in: L<Paws::Macie::DisassociateS3Resources>

Returns: a L<Paws::Macie::DisassociateS3ResourcesResult> instance

Removes specified S3 resources from being monitored by Amazon Macie. If
memberAccountId isn't specified, the action removes specified S3
resources from Macie for the current master account. If memberAccountId
is specified, the action removes specified S3 resources from Macie for
the specified member account.


=head2 ListMemberAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Macie::ListMemberAccounts>

Returns: a L<Paws::Macie::ListMemberAccountsResult> instance

Lists all Amazon Macie member accounts for the current Amazon Macie
master account.


=head2 ListS3Resources

=over

=item [MaxResults => Int]

=item [MemberAccountId => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Macie::ListS3Resources>

Returns: a L<Paws::Macie::ListS3ResourcesResult> instance

Lists all the S3 resources associated with Amazon Macie. If
memberAccountId isn't specified, the action lists the S3 resources
associated with Amazon Macie for the current master account. If
memberAccountId is specified, the action lists the S3 resources
associated with Amazon Macie for the specified member account.


=head2 UpdateS3Resources

=over

=item S3ResourcesUpdate => ArrayRef[L<Paws::Macie::S3ResourceClassificationUpdate>]

=item [MemberAccountId => Str]


=back

Each argument is described in detail in: L<Paws::Macie::UpdateS3Resources>

Returns: a L<Paws::Macie::UpdateS3ResourcesResult> instance

Updates the classification types for the specified S3 resources. If
memberAccountId isn't specified, the action updates the classification
types of the S3 resources associated with Amazon Macie for the current
master account. If memberAccountId is specified, the action updates the
classification types of the S3 resources associated with Amazon Macie
for the specified member account.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

