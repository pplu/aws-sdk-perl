package Paws::Honeycode;
  use Moose;
  sub service { 'honeycode' }
  sub signing_name { 'honeycode' }
  sub version { '2020-03-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchCreateTableRows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Honeycode::BatchCreateTableRows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteTableRows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Honeycode::BatchDeleteTableRows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateTableRows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Honeycode::BatchUpdateTableRows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpsertTableRows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Honeycode::BatchUpsertTableRows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTableDataImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Honeycode::DescribeTableDataImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetScreenData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Honeycode::GetScreenData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeScreenAutomation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Honeycode::InvokeScreenAutomation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTableColumns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Honeycode::ListTableColumns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTableRows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Honeycode::ListTableRows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Honeycode::ListTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub QueryTableRows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Honeycode::QueryTableRows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTableDataImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Honeycode::StartTableDataImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllTableColumns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTableColumns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTableColumns(@_, nextToken => $next_result->nextToken);
        push @{ $result->tableColumns }, @{ $next_result->tableColumns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tableColumns') foreach (@{ $result->tableColumns });
        $result = $self->ListTableColumns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tableColumns') foreach (@{ $result->tableColumns });
    }

    return undef
  }
  sub ListAllTableRows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTableRows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTableRows(@_, nextToken => $next_result->nextToken);
        push @{ $result->rows }, @{ $next_result->rows };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'rows') foreach (@{ $result->rows });
        $result = $self->ListTableRows(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'rows') foreach (@{ $result->rows });
    }

    return undef
  }
  sub ListAllTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTables(@_, nextToken => $next_result->nextToken);
        push @{ $result->tables }, @{ $next_result->tables };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tables') foreach (@{ $result->tables });
        $result = $self->ListTables(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tables') foreach (@{ $result->tables });
    }

    return undef
  }
  sub QueryAllTableRows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->QueryTableRows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->QueryTableRows(@_, nextToken => $next_result->nextToken);
        push @{ $result->rows }, @{ $next_result->rows };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'rows') foreach (@{ $result->rows });
        $result = $self->QueryTableRows(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'rows') foreach (@{ $result->rows });
    }

    return undef
  }


  sub operations { qw/BatchCreateTableRows BatchDeleteTableRows BatchUpdateTableRows BatchUpsertTableRows DescribeTableDataImportJob GetScreenData InvokeScreenAutomation ListTableColumns ListTableRows ListTables QueryTableRows StartTableDataImportJob / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode - Perl Interface to AWS Amazon Honeycode

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Honeycode');
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

Amazon Honeycode is a fully managed service that allows you to quickly
build mobile and web apps for teamsE<mdash>without programming. Build
Honeycode apps for managing almost anything, like projects, customers,
operations, approvals, resources, and even your team.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01>


=head1 METHODS

=head2 BatchCreateTableRows

=over

=item RowsToCreate => ArrayRef[L<Paws::Honeycode::CreateRowData>]

=item TableId => Str

=item WorkbookId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Honeycode::BatchCreateTableRows>

Returns: a L<Paws::Honeycode::BatchCreateTableRowsResult> instance

The BatchCreateTableRows API allows you to create one or more rows at
the end of a table in a workbook. The API allows you to specify the
values to set in some or all of the columns in the new rows.

If a column is not explicitly set in a specific row, then the column
level formula specified in the table will be applied to the new row. If
there is no column level formula but the last row of the table has a
formula, then that formula will be copied down to the new row. If there
is no column level formula and no formula in the last row of the table,
then that column will be left blank for the new rows.


=head2 BatchDeleteTableRows

=over

=item RowIds => ArrayRef[Str|Undef]

=item TableId => Str

=item WorkbookId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Honeycode::BatchDeleteTableRows>

Returns: a L<Paws::Honeycode::BatchDeleteTableRowsResult> instance

The BatchDeleteTableRows API allows you to delete one or more rows from
a table in a workbook. You need to specify the ids of the rows that you
want to delete from the table.


=head2 BatchUpdateTableRows

=over

=item RowsToUpdate => ArrayRef[L<Paws::Honeycode::UpdateRowData>]

=item TableId => Str

=item WorkbookId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Honeycode::BatchUpdateTableRows>

Returns: a L<Paws::Honeycode::BatchUpdateTableRowsResult> instance

The BatchUpdateTableRows API allows you to update one or more rows in a
table in a workbook.

You can specify the values to set in some or all of the columns in the
table for the specified rows. If a column is not explicitly specified
in a particular row, then that column will not be updated for that row.
To clear out the data in a specific cell, you need to set the value as
an empty string ("").


=head2 BatchUpsertTableRows

=over

=item RowsToUpsert => ArrayRef[L<Paws::Honeycode::UpsertRowData>]

=item TableId => Str

=item WorkbookId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Honeycode::BatchUpsertTableRows>

Returns: a L<Paws::Honeycode::BatchUpsertTableRowsResult> instance

The BatchUpsertTableRows API allows you to upsert one or more rows in a
table. The upsert operation takes a filter expression as input and
evaluates it to find matching rows on the destination table. If
matching rows are found, it will update the cells in the matching rows
to new values specified in the request. If no matching rows are found,
a new row is added at the end of the table and the cells in that row
are set to the new values specified in the request.

You can specify the values to set in some or all of the columns in the
table for the matching or newly appended rows. If a column is not
explicitly specified for a particular row, then that column will not be
updated for that row. To clear out the data in a specific cell, you
need to set the value as an empty string ("").


=head2 DescribeTableDataImportJob

=over

=item JobId => Str

=item TableId => Str

=item WorkbookId => Str


=back

Each argument is described in detail in: L<Paws::Honeycode::DescribeTableDataImportJob>

Returns: a L<Paws::Honeycode::DescribeTableDataImportJobResult> instance

The DescribeTableDataImportJob API allows you to retrieve the status
and details of a table data import job.


=head2 GetScreenData

=over

=item AppId => Str

=item ScreenId => Str

=item WorkbookId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Variables => L<Paws::Honeycode::VariableValueMap>]


=back

Each argument is described in detail in: L<Paws::Honeycode::GetScreenData>

Returns: a L<Paws::Honeycode::GetScreenDataResult> instance

The GetScreenData API allows retrieval of data from a screen in a
Honeycode app. The API allows setting local variables in the screen to
filter, sort or otherwise affect what will be displayed on the screen.


=head2 InvokeScreenAutomation

=over

=item AppId => Str

=item ScreenAutomationId => Str

=item ScreenId => Str

=item WorkbookId => Str

=item [ClientRequestToken => Str]

=item [RowId => Str]

=item [Variables => L<Paws::Honeycode::VariableValueMap>]


=back

Each argument is described in detail in: L<Paws::Honeycode::InvokeScreenAutomation>

Returns: a L<Paws::Honeycode::InvokeScreenAutomationResult> instance

The InvokeScreenAutomation API allows invoking an action defined in a
screen in a Honeycode app. The API allows setting local variables,
which can then be used in the automation being invoked. This allows
automating the Honeycode app interactions to write, update or delete
data in the workbook.


=head2 ListTableColumns

=over

=item TableId => Str

=item WorkbookId => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Honeycode::ListTableColumns>

Returns: a L<Paws::Honeycode::ListTableColumnsResult> instance

The ListTableColumns API allows you to retrieve a list of all the
columns in a table in a workbook.


=head2 ListTableRows

=over

=item TableId => Str

=item WorkbookId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RowIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Honeycode::ListTableRows>

Returns: a L<Paws::Honeycode::ListTableRowsResult> instance

The ListTableRows API allows you to retrieve a list of all the rows in
a table in a workbook.


=head2 ListTables

=over

=item WorkbookId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Honeycode::ListTables>

Returns: a L<Paws::Honeycode::ListTablesResult> instance

The ListTables API allows you to retrieve a list of all the tables in a
workbook.


=head2 QueryTableRows

=over

=item FilterFormula => L<Paws::Honeycode::Filter>

=item TableId => Str

=item WorkbookId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Honeycode::QueryTableRows>

Returns: a L<Paws::Honeycode::QueryTableRowsResult> instance

The QueryTableRows API allows you to use a filter formula to query for
specific rows in a table.


=head2 StartTableDataImportJob

=over

=item ClientRequestToken => Str

=item DataFormat => Str

=item DataSource => L<Paws::Honeycode::ImportDataSource>

=item DestinationTableId => Str

=item ImportOptions => L<Paws::Honeycode::ImportOptions>

=item WorkbookId => Str


=back

Each argument is described in detail in: L<Paws::Honeycode::StartTableDataImportJob>

Returns: a L<Paws::Honeycode::StartTableDataImportJobResult> instance

The StartTableDataImportJob API allows you to start an import job on a
table. This API will only return the id of the job that was started. To
find out the status of the import request, you need to call the
DescribeTableDataImportJob API.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllTableColumns(sub { },TableId => Str, WorkbookId => Str, [NextToken => Str])

=head2 ListAllTableColumns(TableId => Str, WorkbookId => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tableColumns, passing the object as the first parameter, and the string 'tableColumns' as the second parameter 

If not, it will return a a L<Paws::Honeycode::ListTableColumnsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTableRows(sub { },TableId => Str, WorkbookId => Str, [MaxResults => Int, NextToken => Str, RowIds => ArrayRef[Str|Undef]])

=head2 ListAllTableRows(TableId => Str, WorkbookId => Str, [MaxResults => Int, NextToken => Str, RowIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - rows, passing the object as the first parameter, and the string 'rows' as the second parameter 

If not, it will return a a L<Paws::Honeycode::ListTableRowsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTables(sub { },WorkbookId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTables(WorkbookId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tables, passing the object as the first parameter, and the string 'tables' as the second parameter 

If not, it will return a a L<Paws::Honeycode::ListTablesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 QueryAllTableRows(sub { },FilterFormula => L<Paws::Honeycode::Filter>, TableId => Str, WorkbookId => Str, [MaxResults => Int, NextToken => Str])

=head2 QueryAllTableRows(FilterFormula => L<Paws::Honeycode::Filter>, TableId => Str, WorkbookId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - rows, passing the object as the first parameter, and the string 'rows' as the second parameter 

If not, it will return a a L<Paws::Honeycode::QueryTableRowsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

