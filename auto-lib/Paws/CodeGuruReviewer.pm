package Paws::CodeGuruReviewer;
  use Moose;
  sub service { 'codeguru-reviewer' }
  sub signing_name { 'codeguru-reviewer' }
  sub version { '2019-09-19' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::AssociateRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRepositoryAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::DescribeRepositoryAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::DisassociateRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRepositoryAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::ListRepositoryAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllRepositoryAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRepositoryAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRepositoryAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->RepositoryAssociationSummaries }, @{ $next_result->RepositoryAssociationSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RepositoryAssociationSummaries') foreach (@{ $result->RepositoryAssociationSummaries });
        $result = $self->ListRepositoryAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RepositoryAssociationSummaries') foreach (@{ $result->RepositoryAssociationSummaries });
    }

    return undef
  }


  sub operations { qw/AssociateRepository DescribeRepositoryAssociation DisassociateRepository ListRepositoryAssociations / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer - Perl Interface to AWS Amazon CodeGuru Reviewer

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeGuruReviewer');
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

This section provides documentation for the Amazon CodeGuru Reviewer
API operations.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19>


=head1 METHODS

=head2 AssociateRepository

=over

=item Repository => L<Paws::CodeGuruReviewer::Repository>

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::AssociateRepository>

Returns: a L<Paws::CodeGuruReviewer::AssociateRepositoryResponse> instance

Associates an AWS CodeCommit repository with Amazon CodeGuru Reviewer.
When you associate an AWS CodeCommit repository with Amazon CodeGuru
Reviewer, Amazon CodeGuru Reviewer will provide recommendations for
each pull request. You can view recommendations in the AWS CodeCommit
repository.

You can associate a GitHub repository using the Amazon CodeGuru
Reviewer console.


=head2 DescribeRepositoryAssociation

=over

=item AssociationArn => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::DescribeRepositoryAssociation>

Returns: a L<Paws::CodeGuruReviewer::DescribeRepositoryAssociationResponse> instance

Describes a repository association.


=head2 DisassociateRepository

=over

=item AssociationArn => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::DisassociateRepository>

Returns: a L<Paws::CodeGuruReviewer::DisassociateRepositoryResponse> instance

Removes the association between Amazon CodeGuru Reviewer and a
repository.


=head2 ListRepositoryAssociations

=over

=item [MaxResults => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]

=item [Owners => ArrayRef[Str|Undef]]

=item [ProviderTypes => ArrayRef[Str|Undef]]

=item [States => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::ListRepositoryAssociations>

Returns: a L<Paws::CodeGuruReviewer::ListRepositoryAssociationsResponse> instance

Lists repository associations. You can optionally filter on one or more
of the following recommendation properties: provider types, states,
names, and owners.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllRepositoryAssociations(sub { },[MaxResults => Int, Names => ArrayRef[Str|Undef], NextToken => Str, Owners => ArrayRef[Str|Undef], ProviderTypes => ArrayRef[Str|Undef], States => ArrayRef[Str|Undef]])

=head2 ListAllRepositoryAssociations([MaxResults => Int, Names => ArrayRef[Str|Undef], NextToken => Str, Owners => ArrayRef[Str|Undef], ProviderTypes => ArrayRef[Str|Undef], States => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RepositoryAssociationSummaries, passing the object as the first parameter, and the string 'RepositoryAssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::CodeGuruReviewer::ListRepositoryAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

