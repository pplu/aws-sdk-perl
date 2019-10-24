# Generated from json/callargs_class.tt

package Paws::Athena::ListWorkGroups;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Athena::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListWorkGroups');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Athena::ListWorkGroupsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ListWorkGroups - Arguments for method ListWorkGroups on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkGroups on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method ListWorkGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkGroups.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $ListWorkGroupsOutput = $athena->ListWorkGroups(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListWorkGroupsOutput->NextToken;
    my $WorkGroups = $ListWorkGroupsOutput->WorkGroups;

    # Returns a L<Paws::Athena::ListWorkGroupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/ListWorkGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of workgroups to return in this request.



=head2 NextToken => Str

A token to be used by the next request if this request is truncated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkGroups in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

