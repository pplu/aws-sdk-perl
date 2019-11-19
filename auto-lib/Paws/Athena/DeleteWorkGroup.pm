# Generated from json/callargs_class.tt

package Paws::Athena::DeleteWorkGroup;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Athena::Types qw//;
  has RecursiveDeleteOption => (is => 'ro', isa => Bool, predicate => 1);
  has WorkGroup => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteWorkGroup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Athena::DeleteWorkGroupOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'WorkGroup' => 1
                  },
  'types' => {
               'RecursiveDeleteOption' => {
                                            'type' => 'Bool'
                                          },
               'WorkGroup' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::DeleteWorkGroup - Arguments for method DeleteWorkGroup on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWorkGroup on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method DeleteWorkGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWorkGroup.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $DeleteWorkGroupOutput = $athena->DeleteWorkGroup(
      WorkGroup             => 'MyWorkGroupName',
      RecursiveDeleteOption => 1,                   # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/DeleteWorkGroup>

=head1 ATTRIBUTES


=head2 RecursiveDeleteOption => Bool

The option to delete the workgroup and its contents even if the
workgroup contains any named queries.



=head2 B<REQUIRED> WorkGroup => Str

The unique name of the workgroup to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWorkGroup in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

